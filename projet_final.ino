
/**********************************************************
************** DEFINITION DES BIBLIOTHEQUES **************
**********************************************************/


#include <SoftwareSerial.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>


/**********************************************************
****************** DEFINITION DES PORTS ******************
**********************************************************/

#define rxpin 11
#define txpin 10
#define baudrate 9600

SoftwareSerial myserial (rxpin,txpin);

//CAPTEUR
#define analog_port 0
#define Periode 50 //envoie des données toute les 50ms

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
// The pins for I2C are defined by the Wire-library. 
// On an arduino UNO:       A4(SDA), A5(SCL)
// On an arduino MEGA 2560: 20(SDA), 21(SCL)
// On an arduino LEONARDO:   2(SDA),  3(SCL), ...
#define OLED_RESET     4 // Reset pin # (or -1 if sharing Arduino reset pin)
#define SCREEN_ADDRESS 0x3C ///< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

#define encodeur0PinA 2 // CLK
#define encodeur0PinB 3 // DATA
#define Switch 4 // switch


/**********************************************************
******************* VARIABLES GLOBALES *******************
**********************************************************/

double tension;
double resistance;
unsigned long temps_ref;

volatile unsigned int encodeur0Pos = 0;
volatile unsigned int choice =0;
// 0) resistance
// 1) tension

volatile unsigned int Menu = 0;
// 0) mesure on
// 1) mesure off

bool SwitchState= HIGH;
bool SwitchLast= LOW;

/**********************************************************
*********************** FONCTIONS ************************
**********************************************************/

void affichage_tension (double tension)
{
  //configuration de l'écran
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);

  //Affichage de la tension
  Serial.println(tension);
  display.setCursor(30,0);
  display.println(F("tension"));
  display.setCursor(40,17);
  display.println(tension);
  display.setCursor(90,17);
  display.println(F("V"));
  display.display();
}


void affichage_resistance (double resistance)
{
  //configuration de l'écran
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);

  //Affichage de la tension
  Serial.println(resistance);
  display.setCursor(5,0);
  display.println(F("resistance"));
  display.setCursor(0,17);
  display.println(resistance);
  display.setCursor(65,17);
  display.println(F("MOhms"));
  display.display();
}

void Menu_OLED ()
{
  if (choice==0)
    {
      choice = 1;
    }
    else
    {
      choice = 0;
      
    }
}


/**********************************************************
****************** PROGRAMME PRINCIPAL *******************
**********************************************************/

void setup()
{
//ouverture des ports 
pinMode (rxpin, INPUT);
pinMode (txpin, OUTPUT);

pinMode (encodeur0PinA,INPUT);
digitalWrite(encodeur0PinA,HIGH);
pinMode (encodeur0PinB,INPUT);
digitalWrite(encodeur0PinB,HIGH);
temps_ref=millis();


myserial.begin(baudrate);
Serial.begin(baudrate);

display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS);

 /* if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }

  // Show initial display buffer contents on the screen --
  // the library initializes this with an Adafruit splash screen.
  display.display();
  delay(2000); // Pause for 2 seconds

  // Clear the buffer*/

//Ecran de demarrage

display.clearDisplay();
display.setTextSize(2);
display.setTextColor(WHITE);
display.setCursor(5,10);
display.println(F("Sasa & Lea"));
display.display();
delay(2000);

}

void loop()
{
 
 tension = analogRead(analog_port);

//Bluetooth  
 if (abs(millis()-temps_ref) > Periode)
 {
 byte V = map(tension,0,1023,0,255);
 myserial.write(V);
 }
 temps_ref=millis();
 
 
 tension=tension*5/1024;
 resistance = (1.0+100.0)*100000.0*(5.0/tension)-100000.0-10000.0;
 
 delay(25);

  //Gestion du bouton de l'encodeur rotatoir
  SwitchState = digitalRead(Switch);
  if (SwitchState == HIGH && SwitchLast == LOW && Menu ==0) 
  {
    Menu=1;
    attachInterrupt(digitalPinToInterrupt(encodeur0PinB), Menu_OLED, RISING);
    delay(500);//debounce 
  }
  else if (SwitchState == HIGH && SwitchLast==LOW && Menu ==1) 
  {
    Menu=0;
    detachInterrupt(digitalPinToInterrupt(encodeur0PinB)); 
    delay(500);//debounce
  }
  SwitchLast = SwitchState;

  //Gestion de l'Affichage sur l'écran OLED
  switch (Menu)
  {
    case 0 :
      switch (choice)
    {
      case 0 : 
      affichage_resistance(resistance/1000000.0);
      break;
  
      case 1 :
      affichage_tension (tension) ;
      break;
    }
    break;
    
    case 1 :
      switch (choice)
    {
      case 0 : 
      //Configuration de l'écran
      display.clearDisplay();
      display.setTextSize(1); 
      display.setTextColor(WHITE);
  
      display.setCursor(5, 0);
      display.println(F(" -> Resistance"));
      display.setCursor(30, 17);
      display.println(F("Tension"));
      display.display();
      break;
  
      case 1 :
      //Configuration de l'écran
      display.clearDisplay();
      display.setTextSize(1); 
      display.setTextColor(WHITE);
  
      display.setCursor(30, 0);
      display.println(F("Resistance"));
      display.setCursor(5, 17);
      display.println(F(" -> Tension"));
      display.display();
      break;
    }
    break;
  } 
}
