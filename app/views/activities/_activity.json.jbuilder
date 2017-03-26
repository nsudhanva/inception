json.extract! activity, :id, :title, :desc, :start_date, :end_date, :is_completed, :routine_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
