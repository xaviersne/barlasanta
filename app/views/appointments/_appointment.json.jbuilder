json.extract! appointment, :id, :date, :time, :people, :client_devise_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
