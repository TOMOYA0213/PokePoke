json.extract! card, :id, :name, :type, :created_at, :updated_at
json.url card_url(card, format: :json)
