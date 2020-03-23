json.extract! member_check_in, :id, :member_id, :event_id, :check_in_date, :created_at, :updated_at
json.url member_check_in_url(member_check_in, format: :json)
