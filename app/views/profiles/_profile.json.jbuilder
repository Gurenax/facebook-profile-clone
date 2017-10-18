json.extract! profile, :id, :user_id, :first_name, :last_name, :location_city, :location_state, :location_country_code, :hometown_city, :hometown_state, :hometown_country_code, :job, :company, :partner_first_name, :partner_last_name, :birthdate, :contact_no, :profile_image_data, :cover_image_data, :created_at, :updated_at
json.url profile_url(profile, format: :json)
