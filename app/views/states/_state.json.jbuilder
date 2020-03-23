json.extract! state, :id, :country_id, :name, :state_abbreviation, :created_at, :updated_at
json.url state_url(state, format: :json)
