# RECHERCHES POUR LA CHARTE GRAPHIQUE

## IDEES D'ELEMENTS 

- Boutons avec 2 coins / 4 arrondis, fond couleur "dark" et contour "ligth" / 
- 
-


## COULEURS

### INFOS

- pas de blanc, ni de noir à 100%


**MOTS-CLES EN LIEN AVEC LE PROJET** : optimisation, web, psycologie, jeu, entraide, apprentissage, etc.


### CHOIX COLORIMETRIQUES

```SCSS
$white : #EDEDED; // "blanc cassé" > fond de l'écran.

$black : #121212; // "gris anthracite" > titres + textes courants.

$grey : #6B6B6B; // "gris " > éléments indisponibles + bordures des tableaux.
```

```SCSS
$accent : #E4AA69; // "jaune cuivré" > titres + sous-titres + traits de séparation.
```

```SCSS
$dangerDark : #C6284B;  // "rouge bordeaux" > mauvaise réponse au QCM + toast d'erreur de remplissage de formulaire, etc.
$dangerLigth : #E7889D:  // relief des boutons.
```

```SCSS
$successDark : #2A795A;  // "vert émeraude" > navigation + bonne réponse au QCM + toast de validation de remplissage de formulaire.

$successLight : #59C59A; // relief des boutons.
```

```SCSS
$primaryDark : #27717C; // "bleu paon" > navigation + proposition non-séléctionnées au QCM + toast d'information (pour indiquer un gain suite à la participation au concours, etc.).
$primaryLight : #54BAC9; // relief des boutons.
```



## TYPOGRAPHIE(S)

- **Métropolis** (pour les titres et sous-titres)
- **IBM Plex Serif** (pour les textes courants, etc.)

> UTILISER L'UNITEE DE TAILLE : **EM** (plutôt que des pixels) > Les EM prend en compte la taille de l'élément parent

- Petit texte : 0.75 EM
- Texte courant (référence de base) : 16 PX (conseillé par Kévin)
- H1 : 2.5 EM
- H2 : 2 EM
- H3 : 1.5 EM