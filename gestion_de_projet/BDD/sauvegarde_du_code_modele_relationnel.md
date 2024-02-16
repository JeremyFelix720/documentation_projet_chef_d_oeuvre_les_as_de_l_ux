# MODELE RELATIONNEL

## SYNTAXE DE DBDIAGRAM

https://dbml.dbdiagram.io/docs/#relationships-foreign-key-definition

___

// RELATION 1, * ("one to many")
// un utilisateur peut publier 0 ou plusieurs projet(s).
// un projet peut être publié par 1 et 1 seul utilisateur.
Ref: USER.id < PROJECT.user_id

// RELATION 1, * ("one to many")
// un projet peut avoir 0 ou plusieurs scénario(s).
// un scénario peut appartenir à 1 et 1 seul projet.
Ref: PROJECT.id < SCENARIO.project_id

// RELATION 1, * ("one to many")
// un projet peut avoir 0 ou plusieurs page(s).
// une page peut appartenir à 1 et 1 seul projet.
Ref: PROJECT.id < PAGE.project_id

// RELATION 1, * ("one to many")
// un commentaire peut avoir 0 ou plusieurs scénario(s).
// un scénario peut appartenir à 1 et 1 seul commentaire.
Ref: COMMENT.id < SCENARIO.project_id

// RELATION 1, * ("one to many")
// un commentaire peut avoir 0 ou plusieurs page(s).
// une page peut appartenir à 1 et 1 seul commentaire.
Ref: COMMENT.id < PAGE.project_id

// RELATION *, * ("many to many")
// un scénario peut avoir 1 ou plusieurs page(s).
// une page peut appartenir à 0 ou à plusieurs scénario(s).
Ref: SCENARIO.id < SCENARIO_HAS_PAGE.scenario_id
Ref: PAGE.id < SCENARIO_HAS_PAGE.page_id

// RELATION *, * ("many to many")
// un utilisateur peut mettre en favori 0 ou plusieurs projet(s).
// un projet peut être mis en favori par 0 ou plusieurs utilisateur(s).
Ref: USER.id < FAVORITE.user_id
Ref: PROJECT.id < FAVORITE.project_id

// RELATION *, * ("many to many")
// un utilisateur peut commenter 0 ou plusieurs projet(s).
// un projet peut être commenté par 0 ou plusieurs utilisateur(s).
Ref: USER.id < COMMENT.user_id
Ref: PROJECT.id < COMMENT.project_id

// RELATION *, * ("many to many")
// un utilisateur peut avoir 0 ou plusieurs fiche(s) mémo.
// une fiche mémo peut appartenir à 0 ou à plusieurs utilisateur(s).
Ref: USER.id < USER_HAS_MEMO_SHEET.user_id
Ref: MEMO_SHEET.id < USER_HAS_MEMO_SHEET.memo_sheet_id

Table USER {
    id integer
    pseudonym string
    email string
    phone_number string
    city string
    postal_code number
    password string
    points number
    grade string
    rib string
}

Table PROJECT {
  id integer
  user_id integer
  title string
  banner_url string
  website_url string
  description string
  budget number
  comments number
  maximum_comments number
}

Table SCENARIO {
  id integer
  project_id integer
  comment_id integer
  title string
}

Table PAGE {
  id integer
  project_id integer
  comment_id integer
  title string
  url string
}

Table MEMO_SHEET {
  id integer
  plan_url string
  title string
  observation string
  utility string
  advice string
  state bolean
}

// Table de liaison entre les tables USER et PROJECT 
Table FAVORITE {
  user_id integer
  project_id number
}

// Table de liaison entre les tables USER et PROJECT 
Table COMMENT {
  id integer
  user_id integer
  project_id number
  content string
  rank number
  submit_date date
}

// Table de liaison entre les tables SCENARIO et PAGE 
Table SCENARIO_HAS_PAGE {
  scenario_id integer
  page_id integer
}

// Table de liaison entre les tables USER et MEMO_SHEET 
Table USER_HAS_MEMO_SHEET {
  user_id integer
  memo_sheet_id integer
}