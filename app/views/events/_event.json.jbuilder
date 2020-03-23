json.extract! event, :id, :description, :event_date, :event_type_id, :event_status_id, :sponsor_id, :fee, :category, :address, :building_name, :city, :zip, :state_id, :country_id, :created_at, :updated_at
json.url event_url(event, format: :json)
