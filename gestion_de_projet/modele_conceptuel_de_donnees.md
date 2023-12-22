
> Adapter la syntaxe pour Mermaid Chart.

Diagram
    user }|..|{ DELIVERY-ADDRESS : has



table user {
    number id
    string pseudonym
    date birth_date
    string email
    number phone_number
    string city
    number postal_code
    string password
    string password_confirmation
    number points
    string grade
    number rib
}

project {
    number id
    string name
    string banner_url
    string website_url
    string description
    number budget
    array pages
    string priority
    bolean favorite_project
}

public_analysis {
    number id
    number project_id
    number remaining_analyzes
    bolean favorite_analysis
}

user_analysis {
    number id
    number id_public_analysis
    number id_user
    number rank
    date submit_date
}

memo_sheets {
    number id
    string plan_url
    string name
    string observation
    string utility
    string advice
    bolean state
}