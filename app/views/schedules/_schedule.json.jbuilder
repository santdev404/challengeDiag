json.extract! schedule, :id, :user_id, :consultation_id, :start_at, :end_at, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
