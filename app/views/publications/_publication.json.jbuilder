json.extract! publication, :id, :titre, :contenu, :created_at, :updated_at
json.url publication_url(publication, format: :json)
