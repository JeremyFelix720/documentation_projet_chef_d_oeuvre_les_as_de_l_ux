# PROCEDURE D'UTILISATION DE DOCKER


Pour dockeriser le FRONTEND, le BACKEND et la BDD de notre projet chef d'oeuvre, suivre les étapes suivantes pour ces 3 parties :

1) A la racine du projet, créer l'image compilée (ensuite, on peut  configuer le dockerfile créé si besoin) :
```bash
docker build -t frontend_les_as_de_l_ux .
```

2) Executer l'image accessible dans un conteneur sur Docker desktop (à partir de la rubrique "Images") :
> Renseigner un nom de conteneur representatif et un numéro de port disponible

3) Acceder au projet en ligne localement (en localhost) avec le bon numéro de port

____


4) Utiliser Docker compose pour executer plusieurs conteneurs en parallèle (en locurence ici le backend et la BDD qui fonctionnent ensemble alors que le frontend peut être indépendant)

???
```bash
git clone https://github.com/docker/multi-container-app multi-container-app
```

> Lier les conteneurs à partir du fichier yalm (en ajoutant autant de services qu'il y a de conteneurs)

A la racine du projet (celui cloné ou le notre ???)
```bash
docker compose up -d
```
