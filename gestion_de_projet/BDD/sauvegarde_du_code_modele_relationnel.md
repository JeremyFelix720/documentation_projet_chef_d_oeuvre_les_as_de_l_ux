# MODELE RELATIONNEL

## SYNTAXE DE DBDIAGRAM

https://dbml.dbdiagram.io/docs/#relationships-foreign-key-definition

___

// RELATION 1, * ("one to many")
// un utilisateur peut publier 0 ou plusieurs projet(s).
// un projet peut être publié par 1 et 1 seul utilisateur.
Ref: USER.id < PROJECT.userId

// RELATION 1, * ("one to many")
// un projet peut avoir 0 ou plusieurs scénario(s).
// un scénario peut appartenir à 1 et 1 seul projet.
Ref: PROJECT.id < SCENARIO.projectId

// RELATION 1, * ("one to many")
// un projet peut avoir 0 ou plusieurs page(s).
// une page peut appartenir à 1 et 1 seul projet.
Ref: PROJECT.id < PAGE.projectId

// RELATION 1, * ("one to many")
// un commentaire peut avoir 0 ou plusieurs scénario(s).
// un scénario peut appartenir à 1 et 1 seul commentaire.
Ref: COMMENT.id < SCENARIO.projectId

// RELATION 1, * ("one to many")
// un commentaire peut avoir 0 ou plusieurs page(s).
// une page peut appartenir à 1 et 1 seul commentaire.
Ref: COMMENT.id < PAGE.projectId

// RELATION *, * ("many to many")
// un scénario peut avoir 1 ou plusieurs page(s).
// une page peut appartenir à 0 ou à plusieurs scénario(s).
Ref: SCENARIO.id < SCENARIO_HAS_PAGE.scenarioId
Ref: PAGE.id < SCENARIO_HAS_PAGE.pageId

// RELATION *, * ("many to many")
// un utilisateur peut mettre en favori 0 ou plusieurs projet(s).
// un projet peut être mis en favori par 0 ou plusieurs utilisateur(s).
Ref: USER.id < FAVORITE.userId
Ref: PROJECT.id < FAVORITE.projectId

// RELATION *, * ("many to many")
// un utilisateur peut commenter 0 ou plusieurs projet(s).
// un projet peut être commenté par 0 ou plusieurs utilisateur(s).
Ref: USER.id < COMMENT.userId
Ref: PROJECT.id < COMMENT.projectId

// RELATION *, * ("many to many")
// un utilisateur peut avoir 0 ou plusieurs fiche(s) mémo.
// une fiche mémo peut appartenir à 0 ou à plusieurs utilisateur(s).
Ref: USER.id < USER_HAS_MEMO_SHEET.userId
Ref: MEMO_SHEET.id < USER_HAS_MEMO_SHEET.memoSheetId

Table USER {
    id integer
    pseudonym string
    email string
    phoneNumber string
    city string
    postalCode number
    password string
    points number
    grade string
    rib string
}

Table PROJECT {
  id integer
  userId integer
  title string
  bannerUrl string
  websiteUrl string
  description string
  budget number
  comments number
  maximumComments number
}

Table SCENARIO {
  id integer
  projectId integer
  commentId integer
  title string
}

Table PAGE {
  id integer
  projectId integer
  commentId integer
  title string
  url string
}

Table MEMO_SHEET {
  id integer
  planUrl string
  title string
  observation string
  utility string
  advice string
  state bolean
}

// Table de liaison entre les tables USER et PROJECT 
Table FAVORITE {
  userId integer
  projectId number
}

// Table de liaison entre les tables USER et PROJECT 
Table COMMENT {
  id integer
  userId integer
  projectId number
  content string
  likedScenarios string
  likedPages string
  rank number
  submitDate date
}

// Table de liaison entre les tables SCENARIO et PAGE 
Table SCENARIO_HAS_PAGE {
  scenarioId integer
  pageId integer
}

// Table de liaison entre les tables USER et MEMO_SHEET 
Table USER_HAS_MEMO_SHEET {
  userId integer
  memoSheetId integer
}