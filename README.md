
# PROJET_CAPTEUR_BARASZ_CHOURY
 
## SOMMAIRE 
* 1 [Introduction](#introduction)
* 2 [Installation de la chaine de mesure](#paragraph2)
* 3 [Modélisation de la carte PCB sur KiCad](#paragraph3)
* 4 [Fabrication du shield et soudure des composants](#paragraph4)
* 5 [Arduino UNO](#paragraph5) 
    *  5.1 [Description du code](#subparagraph5.1) 
    *  5.2 [Bibliothèques Arduino](#subparagraph5.2)
* 6 [Application APK](#paragraph6)
* 7 [Mise en oeuvre du banc de test](#paragraph7)
    *  7.1 [Protocole](#paragraph7.1)
    *  7.2 [Résultats obtenus](#paragraph7.2)
* 8 [Améliorations à apporter](#paragraph8)
   

--------- 
## Introduction <a name="introduction"></a>
2020-2021 : Ce projet a été réalisé dans le cadre de l'unité de formation _"Du capteur au banc de test"_ de 4ième année Génie Physique à l'INSA Toulouse.
L’objectif est la conception d’un capteur de déformation (jauge de déformation) à base de graphite, peu coûteux, flexible, léger, et avant tout écoresponsable. 

Le coloriage au crayon laisse une fine couche de graphite sur le papier. Cette couche de graphite possède un réseau percolé caractéristique. Toute déformation de ce réseau induit une variation de la distance entre les nanoparticules de graphite. Cette dernière est à l’origine de la modification de la conductivité électrique/résistance de la couche de graphite. 

Souhaitant acquérir et exploiter le signal associé à la variation de résistance du capteur, nous avons réalisé un shield PCB, à l’aide du logiciel KiCad contenant un amplificateur transimpédance, des interfaces pour un module bluetooth, un écran OLED, et un encordeur rotatoir. Ce shiled PCB est ensuite inséré sur un microcontrôleur Arduino Uno, programmé à l’aide du logiciel Arduino IDE en C++. Les mesures de résistances sont également transmises par Bluetooth et répertoriées sur notre application android APK créée sur MIT App Inventor. 

La chaîne de mesure fin prête, nous avons mis au point un banc de test permettant l'étude de la variation de la résistance de différents type de capteurs soumis à une même déformation.

--------------------

## Installation de la chaine de mesure <a name="paragraph2"></a>

    - Imprimer le PCB, préalablement designé sur KiCad, grâce à l'empreinte Gerber. 
  
    - Vérifier l'état des pistes. 
  
    - Souder les composants et brancher l'Oled, l'encodeur rotatoir et le module Bluetooth. 
  
    - Connecter le PCB sur la carte Arduino Uno.
  
    - Connecter le microcontrolleur Arduino Uno au PC grâce au cable USB. 
  
    - Ouvrir le programme Arduino (voir dossier Arduino).   
      Sélectionner au préalable le bon port de communication Arduino puis compiler et téléverser le programme. 
  
Les valeurs de résistance/tension sont directement affichées sur l'Oled. Grâce à l'encodeur rotatoir, vous pouvez décider d'afficher la grandeur souhaitée. Ces dernières sont aussi disponibles sur le moniteur Arduino.
Vous pouvez aussi télécharger notre application APK pour obtenir directement les valeurs sur votre smartphone grâce à votre connexion Bluetooth. 

-------------------

## Modélisation de la carte PCB sur KiCad <a name="paragraph3"></a>

Réalisation de la carte PCB sur KiCad  
   
    - Creation des symboles de l'OLED, le module bluetooth, l'encodeur rotatoir et le capteur graphite.
      Tous les symboles sont répertoriés dans le dossier KiCad. 

    - Schéma electrique du circuit sur eeschema. Sur ce eeschema, vous trouverez un amplificateur transimpédance, l'écran OLED, le module Bluetooth et l'encodeur rotatoire.
      En haut à droite les pins de la carte Arduino sont représentées.  
![Capture d’écran 2021-04-20 à 10 19 14](https://user-images.githubusercontent.com/77725271/115362660-0f753900-a1c2-11eb-8249-97a2df3727b4.png)

   
    - Routage des pistes sur pcbnew.

Visualisation 2D du shield 

![Capture d’écran 2021-04-20 à 10 38 54](https://user-images.githubusercontent.com/77725271/115365432-aba03f80-a1c4-11eb-92de-d01a9dc3d4a2.png)
   
Visualisation 3D du shield

![Capture d’écran 2021-04-20 à 10 42 33](https://user-images.githubusercontent.com/77725271/115365961-26695a80-a1c5-11eb-9623-35357b8806e4.png)

-------------------

## Fabrication du shield et soudure des composants <a name="paragraph3"></a>

Avec l'aide de Mme Cathy Crouzet, nous avons fabriqué la carte PCB modélisée au préalable sur le logiciel KiCad. Notre carte PCB est constituée d'une plaque isolante d'epoxy recouverte d'une très fine feuille de cuivre. Une couche de résine photosensible est déposée sur ce support epoxy cuivré.

Tout d'abord, le tracé de notre modélisation PCB est imprimé sur un support transparant aux ultraviolets de type papier calque : on obtient le masque (ou typon). Celui ci est placé sur la plaquette epoxy, dans l'insoleuse à tube UV, en prenant soin de poser le côté encré au contact du cuivre. Lors de l'insolation de la plaque (réalisée en 1'30"- 2'30"), les parties du typon correspondant aux pistes du circuit empêchent les UV d'atteindre la surface sensible.   
La plaque est ensuite plongée quelques secondes dans un liquide appelé révélateur. Celui ci dissout la résine exposée aux UV lors de l'insolation. A la fin de cette étape, la résine est seulement conservée dans les zones destinées aux pistes de notre circuit.

Après une étape de rinçage à l'eau courante, la plaquette doit par la suite être gravée. Pour cela, nous la plongeons dans un bain de perchlorure de fer pendant 10 minutes environ. Les parties de cuivre non protégées par la résine photosensible sont ici dissoues. Enfin, la dernière étape du processus consiste à retirer l'excès de résine en utilisant de l'acétone. 


La carte PCB ainsi obtenue est fin prête pour les étapes de perçage et de mise en place des composants. 


  * Perçage des trous de la plaque obtenugrâce à une perçeuse électrique 
Nous perçons des trous de diamètre égale à :
      * 0.8mm pour l'AOP, les résistances et les capacités.
      * 1mm pour les connecteurs de l'Arduino, le module Bluetooth, l'écran OLED, l'encodeur rotatoire et les pinces du capteur.
 
  * Soudure des composants
 
Les composants sont soudés sur la carte PCB à l'aide d'un fer à souder. 
 
----------------------

## Arduino UNO <a name="paragraph5"></a>

### Description du code <a name="subparagraph5.1"></a>

Le code Arduino permet de lire les valeurs de tension du capteur de graphite et calcule la valeur de résistance correspondante. Il assure l'affichage des valeurs de tension et de résistance sur un écran OLED. De plus, le code permet la gestion d'un menu via l'encodeur rotatoire: l'utilisateur peut décider d'afficher la valeur de la résistance ou bien celle de la tension. 

Le code permet aussi de communiquer par Bluetooth avec le télephone portable grâce. Il envoie la mesure de la tension du capteur de graphite par Bluetooth. 

### Bibliothèques Arduino <a name="subparagraph5.2"></a>

Afin d'utiliser le code Arduino, il vous faudra au préalable télécharger des bibliothèques Arduino.

À installer depuis l'IDE ou GitHub :

- Adafruit GFX Library : https://github.com/adafruit/Adafruit-GFX-Library
- Adafruit SSD1306 : https://github.com/adafruit/Adafruit_SSD1306
- Adafruit BusIO : https://github.com/adafruit/Adafruit_BusIO  



Vous pouvez aussi télécharger ces bibliothèques direcetement sur l'application Arduino


1) Dans l’IDE Arduino cliquez sur "croquis", allez sur "inclure un bibliothèque" puis cliquez sur  "Gerer les bibliothèques".  

![Capture d’écran 2021-04-21 à 09 37 15](https://user-images.githubusercontent.com/77725271/115515189-2df03880-a285-11eb-8b8e-ceb9764ce249.png)


2) Une fenêtre apparait. Tappez le nom de la bibliothèques que vous voulez ajouter dans la barre de recherche et cliquez sur  "Installer".Fermez la fenêtre.  
   
![Capture d’écran 2021-04-21 à 09 36 37](https://user-images.githubusercontent.com/77725271/115515123-17e27800-a285-11eb-918f-82b29236e2cc.png)


3) Dans l’IDE Arduino cliquez sur "croquis", allez sur "inclure un bibliothèque". A la fin dans les "bibliothèques contribuées" doit se trouver votre biblothèques téléchargée.  

![Capture d’écran 2021-04-21 à 09 40 34](https://user-images.githubusercontent.com/77725271/115515643-a3f49f80-a285-11eb-826f-339561a92329.png)


4) Afin de savoir comment fonctionne la bibliothèque installée, vous pourrez vous servir de la page d’aide qui accompagne généralement la bibliothèque ou alors vous aider des exemples fournis avec celle-ci disponible ici :  

![Capture d’écran 2021-04-21 à 09 43 44](https://user-images.githubusercontent.com/77725271/115516104-16fe1600-a286-11eb-8c3d-5318493226ed.png)



------------------------------

## Application APK <a name="paragraph6"></a>

L'application APK est une applictaion pour smartphone utilisant le système d'exploitation Android. 
Vous pouvez telecharger l'application grâce au fichier .apk qui vous est fourni dans notre dossier APK Bluetooth.  
Si vous souhaitez modifier l'application, vous pouvez utiliser le fichier .aia sur l'application en ligne _MIT APP INVENTOR_.  

Notre application est à mettre en relation avec le code Arduino développé pour mesurer la tension de la couche de graphite. L'application permet de :
  * se connecter à un module Bluetooth.
  * une fois connecté, relever la  valeur de la tension de la couche de graphite envoyée par Bluetooth.
  * calculer la résistance correspondante.
  * afficher ces deux valeurs de tension et de résistance
  * tracer un graphe décrivant l'évolution de la tension au cours du temps.  


----------------------------

## Mise en oeuvre du banc de test <a name="paragraph7"></a> 

### Protocole <a name="paragraph7.1"></a>

Le protocole du banc de test est détaillé dans le fichier "Protocole du banc de test". Veuillez trouver ci joint le lien de ce fichier :https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_BARASZ_CHOURY/blob/c4a42f93ef4b2496bb2e2b371ca4b9b335598a01/Banc%20de%20test/Protocole%20de%20notre%20banc%20de%20test.pdf

### Résultats obtenus <a name="paragraph7.2"></a>

Résultats obtenus sont détaillés au line suivant : https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_BARASZ_CHOURY/blob/7fd93865a4fc5e2c620f3dd2ebc7bdd68492d652/Banc%20de%20test/R%C3%A9sultats%20Banc%20de%20Test.xlsx 

Les analyses de nos résultats : https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_BARASZ_CHOURY/blob/7fd93865a4fc5e2c620f3dd2ebc7bdd68492d652/Banc%20de%20test/Analyse%20de%20nos%20r%C3%A9sultats%20banc%20de%20test.pdf 

----------------------------

## Améliorations à apporter <a name="paragraph8"></a> 


- Afin de pouvoir lire une plus grade gamme de résistance tout en ayant des mesures stables, il faudrait pouvoir changer le gain du circuit transimpédance c'est à dire modifier la résistance R2 ( voir schéma KiCad ). Cependant nous avons soudé celle-ci sur le circuit PCB. Il aurait donc fallut : 
    
  * ne pas souder cette résistance pour pouvoir mettre des résistances différentes
  * souder une résistance variable  

- Lors de l'utilisation du banc de test les déformations sont irréversibles sur le papier. De plus, il est impossible de reproduire exectement les mêmes conditons de test car nous ne pouvons pas:

  * savoir exacement la quantité de graphite mise sur le papier  
  * positionner exactement de la même manière le papier sur le banc de test   

