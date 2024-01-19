# MODELE RELATIONNEL

// RELATION 1, *
// un utilisateur peut publier 0 ou plusieurs projet(s).
// un projet peut être publié par 1 et 1 seul utilisateur.
Ref: USER.id < PROJECT.user_id

// RELATION *, *
// un utilisateur peut mettre en favori 0 ou plusieurs projet(s).
// un projet peut être mis en favori par 0 ou plusieurs utilisateur(s).
Ref: USER.id < FAVORITE.user_id
Ref: PROJECT.id < FAVORITE.project_id

// RELATION *, *
// un utilisateur peut commenter 0 ou plusieurs projet(s).
// un projet peut être commenté par 0 ou plusieurs utilisateur(s).
Ref: USER.id < COMMENT.user_id
Ref: PROJECT.id < COMMENT.project_id

// RELATION *, *
// un utilisateur peut avoir 0 ou plusieurs fiche(s) mémo.
// une fiche mémo peut appartenir à 0 ou à plusieurs utilisateur(s).
Ref: USER.id < USER_HAS_MEMO_SHEET.user_id
Ref: MEMO_SHEET.id < USER_HAS_MEMO_SHEET.memo_sheet_id

Table USER {
    id integer
    pseudonym string
    birth_date date
    email string
    phone_number number
    city string
    postal_code number
    password string
    points number
    grade string
    rib number
}

Table PROJECT {
  id integer
  user_id integer
  title string
  banner_url string
  website_url string
  description string
  scenarios array
  pages array
  budget number
  comments number
  maximum_comments number
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
  user_id integer
  project_id number
  content string
  liked_scenarios array
  liked_pages array
  rank number
  submit_date date
}

// Table de liaison entre les tables USER et MEMO_SHEET 
Table USER_HAS_MEMO_SHEET {
  user_id integer
  memo_sheet_id integer
}

____

## SYNTAXE DE DBDIAGRAM

https://dbml.dbdiagram.io/docs/#relationships-foreign-key-definition
