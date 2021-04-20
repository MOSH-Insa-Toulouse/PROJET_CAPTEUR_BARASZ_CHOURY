# PROJET_CAPTEUR_BARASZ_CHOURY


## SOMMAIRE 
1. [Introduction](#introduction)
2. [KiCad](#paragraph2)
    1. [Sub paragraph](#subparagraph2.1)
3. [Installation de la chaine de mesure](#paragraph3)
4. [Arduino UNO](#paragraph4)
5. [Application APK](#paragraph5)

## Introduction <a name="introduction"></a>
2020-2021 : Ce projet a été réalisé dans le cadre de l'unité de formation _"Du capteur au banc de test"_ de 4ième année Génie Physique à l'INSA Toulouse.
L’objectif est la conception d’un capteur de déformation (jauge de déformation) à base de graphite, peu coûteux, flexible, léger, et avant tout écoresponsable. 

Le coloriage au crayon laisse une fine couche de graphite sur le papier. Cette couche de graphite possède un réseau percolé caractéristique. Toute déformation de ce réseau induit une variation de la distance entre les nanoparticules de graphite. Cette dernière est à l’origine de la modification de la conductivité électrique/résistance de la couche de graphite. 

Souhaitant acquérir et exploiter le signal associé à la variation de résistance du capteur, nous avons réalisé un shield PCB, à l’aide du logiciel KiCad contenant un amplificateur transimpédance, des interfaces pour un module bluetooth, un écran OLED, et un encordeur rotatoir. Ce shiled PCB est ensuite inséré sur un microcontrôleur Arduino Uno, programmé à l’aide du logiciel Arduino IDE en C++. Les mesures de résistances sont également transmises par Bluetooth et répertoriées sur notre application android APK créée sur MIT App Inventor. 

La chaîne de mesure fin prête, nous avons mis au point un banc de test permettant l'étude de la variation de la résistance de différents type de capteurs soumis à une même déformation.

## KiCad <a name="paragraph3"></a>

Réalisation de la carte PCB:

    - Creation des symboles de l'OLED, le module bluetooth, l'encodeur rotatoir
    
   ![Capture d’écran 2021-04-20 à 10 30 14](https://user-images.githubusercontent.com/77725271/115364228-76dfb880-a1c3-11eb-8112-ee9c07ff22fa.png)  
Schema de l'OLED
   
   ![Capture d’écran 2021-04-20 à 10 30 14](https://user-images.githubusercontent.com/77725271/115364487-b9a19080-a1c3-11eb-9f7a-0e47cbe65b2b.png)    
Schema du module bluetooth
    
   ![Capture d’écran 2021-04-20 à 10 35 13](https://user-images.githubusercontent.com/77725271/115364950-346aab80-a1c4-11eb-9b26-226f714a423c.png)
   
Schema de l'encodeut rotatoir
    
    - Schéma electrique du circuit sur eeschema
   ![Capture d’écran 2021-04-20 à 10 19 14](https://user-images.githubusercontent.com/77725271/115362660-0f753900-a1c2-11eb-8249-97a2df3727b4.png)

    
    - Routage des pistes sur pcbnew
   ![Capture d’écran 2021-04-20 à 10 38 54](https://user-images.githubusercontent.com/77725271/115365432-aba03f80-a1c4-11eb-92de-d01a9dc3d4a2.png)
Visualisation 2D du shield

   ![Capture d’écran 2021-04-20 à 10 42 33](https://user-images.githubusercontent.com/77725271/115365961-26695a80-a1c5-11eb-9623-35357b8806e4.png)
Visualisation 3D du shield


### Sub paragraph <a name="subparagraph3.1"></a>
This is a sub paragraph, formatted in heading 3 style

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




## Application APK <a name="paragraph5"></a>
