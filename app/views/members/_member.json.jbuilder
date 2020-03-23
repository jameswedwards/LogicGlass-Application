json.extract! member, :id, :peoplesoft_id, :first_name, :middle_initial, :last_name, :date_of_birth, :address, :city, :zip, :state_id, :country_id, :home_phone, :mobile_phone, :payment, :student_class_id, :major, :created_at, :updated_at
json.url member_url(member, format: :json)
