json.extract! projet, :id, :nom, :contenu, :debut, :fin, :user_id, :created_at, :updated_at
json.url projet_url(projet, format: :json)
