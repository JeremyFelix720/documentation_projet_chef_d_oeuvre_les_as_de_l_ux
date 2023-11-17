# SYNTHESE DE L'UTILISATION DE GIT


Je me sers du pluggin Visual Studio Code : "git graph" pour visualiser les branches et les commits qui s'y trouvent, etc. Avant de créer une branche ou de faire un commit, aller dans le menu "Source Control" > "View Git Graph"

## BRANCHES GIT

- créer une branche (PAS D'ESPACE DANS LE NOM DE LA BRANCHE) :
```bash
git branch fonctionnality_branch_name
```

- se déplacer dessus :
```bash
git checkout fonctionnality_branch_name
```

- créer une branche ET se déplacer dessus :
```bash
git checkout -b fonctionnality_branch_name
```

- répercuter la branche sur la branche distante (gitHub) :
```bash
git push --set-upstream origin fonctionnality_branch_name
```

- voir sur quelle branche on est :
```bash
git branch
```

**QUAND UNE BRANCHE EST finie ou en cours :**


Dans la branche de la fonctionnalité finie :
```bash
git add .
git commit -m "nom du commit"
git push
```


**QUAND UNE BRANCHE EST 100% finie :**

> Se placer sur la branche "develop"
```bash
git checkout develop

# Mise à jour la branche develop :
git pull request

# Fusion de la branche fonctionnalité avec la branche develop :
git merge fonctionnality_branch_name

git push

# Suppression de la branche fonctionnalité (je peux m'en occuper plus tard ; mais si j'ai oublié de faire quelque chose dans cette branche après l'avoir mergée, je dois en recreer une autre pour effectuer la mise à jour) :
git branch -d fonctionnality_branch_name
```
> Gérer les éventuelles érreurs

```bash
git add .
git commit -m "nom du commit"
git push
```


## Nommer ses commits (en faire à chaque fois qu'une fonctionnalité marche pour faire grandir la branche sur laquelle on est) :

- Mise à jour = **[UPDATE] "sujet"**
- Correctif (post mortem) = **[FIX] "sujet"**
- En cours (Work In Progress) = **[WIP] "sujet"**
- Bêta (prêt pour les tests utilisateurs) = **[BETA] "nom version"**
- Pré-release () = **[PRE-RELEASE] nom version**
- Release () = **[RELEASE] nom version**

idées pour nommer ses commits :
https://gitmoji.dev/
git moji
____

- Annuler le dernier commit
```bash
git reset --soft HEAD^
```


## TAGGER UN PROJET (quand une version d'un projet est assez stable pour le versionner avec par exemples : "V1.0", "V1.1", etc.) :

> Un projet taggué ne doit pas comporter d'erreur et doit comporter des changements significatifs par rapport à la dernière version et doit être accessible en ligne

Depuis la branche "develop" fusionnée avec toutes les branches :
```bash
git tag "tag_name"
cd "tag_name"
```

Faire la release en supprimant l'indentation, les libraries de tests, les console.log(), en faisant le tri dans les commentaires, etc. afin que le code puisse être facilement partagé et que les utilisateurs n'aient pas accès à des informations sensibles.

Depuis la branche "develop" fusionnée avec toutes les branches :
```bash
git push origin "tag_name"
```