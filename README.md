# PROJET_CAPTEUR_BARASZ_CHOURY


## SOMMAIRE 
1. [Introduction](#introduction)
2. [KiCad](#paragraph2)
3. [Installation de la chaine de mesure](#paragraph3)
4. [Arduino UNO](#paragraph4)
    1. [Bibliothèques Arduino](#subparagraph4.1)
6. [Application APK](#paragraph5)

## Introduction <a name="introduction"></a>
2020-2021 : Ce projet a été réalisé dans le cadre de l'unité de formation _"Du capteur au banc de test"_ de 4ième année Génie Physique à l'INSA Toulouse.
L’objectif est la conception d’un capteur de déformation (jauge de déformation) à base de graphite, peu coûteux, flexible, léger, et avant tout écoresponsable. 

Le coloriage au crayon laisse une fine couche de graphite sur le papier. Cette couche de graphite possède un réseau percolé caractéristique. Toute déformation de ce réseau induit une variation de la distance entre les nanoparticules de graphite. Cette dernière est à l’origine de la modification de la conductivité électrique/résistance de la couche de graphite. 

Souhaitant acquérir et exploiter le signal associé à la variation de résistance du capteur, nous avons réalisé un shield PCB, à l’aide du logiciel KiCad contenant un amplificateur transimpédance, des interfaces pour un module bluetooth, un écran OLED, et un encordeur rotatoir. Ce shiled PCB est ensuite inséré sur un microcontrôleur Arduino Uno, programmé à l’aide du logiciel Arduino IDE en C++. Les mesures de résistances sont également transmises par Bluetooth et répertoriées sur notre application android APK créée sur MIT App Inventor. 

La chaîne de mesure fin prête, nous avons mis au point un banc de test permettant l'étude de la variation de la résistance de différents type de capteurs soumis à une même déformation.

## KiCad <a name="paragraph3"></a>

Réalisation de la carte PCB sur KiCad

    - Creation des symboles de l'OLED, le module bluetooth, l'encodeur rotatoir et le capteur graphite 
 

Schema du capteur Graphite

   ![Capture d’écran 2021-04-20 à 10 49 12](https://user-images.githubusercontent.com/77725271/115367024-1a31cd00-a1c6-11eb-9362-58d2007cb7b7.png)
   
   
Schema de l'OLED

   ![Capture d’écran 2021-04-20 à 10 30 14](https://user-images.githubusercontent.com/77725271/115364228-76dfb880-a1c3-11eb-8112-ee9c07ff22fa.png) 
   
   
Schema du module bluetooth 

   ![Capture d’écran 2021-04-20 à 10 30 14](https://user-images.githubusercontent.com/77725271/115364487-b9a19080-a1c3-11eb-9f7a-0e47cbe65b2b.png)
   
   
Schema de l'encodeur rotatoir  

   ![Capture d’écran 2021-04-20 à 10 35 13](https://user-images.githubusercontent.com/77725271/115364950-346aab80-a1c4-11eb-9b26-226f714a423c.png)
   
   

    - Schéma electrique du circuit sur eeschema
   
   ![Capture d’écran 2021-04-20 à 10 19 14](https://user-images.githubusercontent.com/77725271/115362660-0f753900-a1c2-11eb-8249-97a2df3727b4.png)

    
    - Routage des pistes sur pcbnew

Visualisation 2D du shield

   ![Capture d’écran 2021-04-20 à 10 38 54](https://user-images.githubusercontent.com/77725271/115365432-aba03f80-a1c4-11eb-92de-d01a9dc3d4a2.png)
   

Visualisation 3D du shield

   ![Capture d’écran 2021-04-20 à 10 42 33](https://user-images.githubusercontent.com/77725271/115365961-26695a80-a1c5-11eb-9623-35357b8806e4.png)



## Installation de la chaine de mesure <a name="paragraph3"></a>

    - Imprimer le PCB, préalablement designé sur KiCad, grâce à l'empreinte Gerber. 
  
    - Vérifier l'état des pistes. 
  
    - Souder les composants et brancher l'Oled, l'encodeur rotatoir et le module Bluetooth. 
  
    - Connecter le PCB sur la carte Arduino Uno.
  
    - Connecter le microcontrolleur Arduino Uno au PC grâce au cable USB. 
  
    - Ouvrir le programme Arduino "ArduinoCode" joint çi dessus. Sélectionner au préalable le bon port de communication Arduino puis compiler et téléverser le programme. 
  
Les valeurs de résistance/tension sont directement affichées sur l'Oled. Grâce à l'encodeur rotatoir, vous pouvez décider d'afficher la grandeur souhaitée. Ces dernières sont aussi disponibles sur le moniteur Arduino.
Vous pouvez aussi télécharger notre application APK pour obtenir directement les valeurs sur votre smartphone grâce à votre connexion Bluetooth. 

## Arduino UNO <a name="paragraph4"></a>

Le code Arduino permet de lire les valeur de tension du capteur de graphite. Vous pouvez choisir par la suite d'afficher sur l'écran OLED soit la tension soit la resistance grâce à l'encodeur rotatoir. 

Le code permet aussi de communiquer avec le télephone portable si vous avez téléchargé notre application Bluetoth APK.

### Bibliothèques Arduino <a name="subparagraph4.1"></a>

Afin d'utiliser le code Arduino il vous faudra au préalable télécharger des bibliothèques Arduino

À installer depuis l'IDE ou GitHub :

- Adafruit GFX Library : https://github.com/adafruit/Adafruit-GFX-Library
- Adafruit SSD1306 : https://github.com/adafruit/Adafruit_SSD1306
- Adafruit BusIO : https://github.com/adafruit/Adafruit_BusIO

Vous pouvez aussi télécharger ces bibliothèques direcetement sur l'application Arduino

1) Dans l’IDE Arduino cliquez sur "croquis", allez sur "inclure un bibliothèque" puis cliquez sur  "Gerer les bibliothèques" .

![Capture d’écran 2021-04-21 à 09 37 15](https://user-images.githubusercontent.com/77725271/115515189-2df03880-a285-11eb-8b8e-ceb9764ce249.png)


2)Une fenêtre apparait. Tappez le nom de la bibliothèques que vous voulez ajouter dans la barre de recherche et cliquez sur  "Installer" .Fermez la fenêtre

![Capture d’écran 2021-04-21 à 09 36 37](https://user-images.githubusercontent.com/77725271/115515123-17e27800-a285-11eb-918f-82b29236e2cc.png)


3) Dans l’IDE Arduino cliquez sur "croquis", allez sur "inclure un bibliothèque". A la fin dans les "bibliothèques contribuées" doit se trouver votre biblothèques téléchargée.

![Capture d’écran 2021-04-21 à 09 40 34](https://user-images.githubusercontent.com/77725271/115515643-a3f49f80-a285-11eb-826f-339561a92329.png)



4) Afin de savoir comment fonctionne la bibliothèque installée, vous pourrez vous servir de la page d’aide qui accompagne généralement la bibliothèque ou alors vous aider des exemples fournis avec celle-ci disponible ici :

![Capture d’écran 2021-04-21 à 09 43 44](https://user-images.githubusercontent.com/77725271/115516104-16fe1600-a286-11eb-8c3d-5318493226ed.png)

 


## Application APK <a name="paragraph5"></a>
