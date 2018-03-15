json.extract! seminari, :id, :da, :al, :luogo, :nazione, :titolo, :descrizione, :created_at, :updated_at
json.url seminari_url(seminari, format: :json)
