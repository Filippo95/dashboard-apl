json.extract! corsi, :id, :data, :luogo, :titolo, :contatto, :descrizione, :created_at, :updated_at
json.url corsi_url(corsi, format: :json)
