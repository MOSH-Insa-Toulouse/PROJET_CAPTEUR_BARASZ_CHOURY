# PROJET_CAPTEUR_BARASZ_CHOURY

2020-2021 : Ce projet a été réalisé dans le cadre de l'unité de formation _"Du capteur au banc de test"_ de 4ième année Génie Physique à l'INSA Toulouse.


## SOMMAIRE 
1. [Introduction](#introduction)
2. [Installation de la chaine de mesure](#paragraph2)
3. [KiCad](#paragraph3)
    1. [Sub paragraph](#subparagraph3.1)
4. [Arduino UNO](#paragraph4)
5. [Application APK](#paragraph5)

## Introduction <a name="introduction"></a>
L’objectif du projet est la conception d’un capteur de déformation/jauge de déformation à base de graphite, peu coûteux, flexible, léger, et avant tout écoresponsable. 

Sur du papier, le coloriage au crayon laisse une fine couche de graphite possédant un réseau percolé. Toute déformation de ce réseau percolé induit une variation de la distance entre les nanoparticules de graphite. Cette dernière est à l’origine de la modification de la conductivité électrique/résistance de la couche de graphite. 

Souhaitant acquérir et exploiter le signal associé à la variation de résistance du capteur, nous avons réalisé un shield PCB, à l’aide du logiciel KiCad contenant un amplificateur transimpédance, des interfaces pour un module bluetooth, un écran OLED, et un encordeur rotatoir. Ce shiled PCB est ensuite inséré sur un microcontrôleur Arduino Uno, programmé à l’aide du logiciel Arduino IDE en C++. Les mesures de résistances sont également transmises par Bluetooth et répertoriées sur notre application android APK créée sur MIT App Inventor. 

Nous avons enfin, mis au point un banc de test permettant l'étude de la déformation en fonction de différents type de capteurs.


## Installation de la chaine de mesure <a name="paragraph2"></a>

  -Imprimer le PCB, préalablement designé sur KiCad, grâce à l'empreinte Gerber. 
  
  -Vérifier l'état des pistes. 
  
  -Souder les composants et brancher l'OLED, l'encodeur rotatoir et le module Bluetooth. 
  
  -Connecter le PCB sur la carte ARDUINO UNO.
  
  -Connecter le microcontrolleur ARDUINO UNO au PC grâce au cable USB. 
  
  -Ouvrir le programme ARDUINO "ArduinoCode" joint çi dessus. Sélectionner au préalable le bon port de communication Arduino puis compiler et téléverser le programme. 
  
Les valeurs de résistance/tension sont directement affichées sur l'OLED. Grâce à l'encodeur rotatoir, vous pouvez décider d'afficher la mesure souhaitée. Ces dernières sont aussi disponibles sur le moniteur ARDUINO.
Vous pouvez aussi télécharger notre application APK pour obtenir directement les valeurs sur votre smartphone grâce à votre connexion Bluetooth. 

## KiCad <a name="paragraph3"></a>
The first paragraph text

### Sub paragraph <a name="subparagraph3.1"></a>
This is a sub paragraph, formatted in heading 3 style

## Arduino UNO <a name="paragraph4"></a>
The second paragraph text

## Application APK <a name="paragraph5"></a>
