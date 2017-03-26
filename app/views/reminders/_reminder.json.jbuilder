json.extract! reminder, :id, :title, :desc, :start_date, :end_date, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)
