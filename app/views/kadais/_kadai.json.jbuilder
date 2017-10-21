json.extract! kadai, :id, :status, :vote_date, :vote_person, :category, :subject, :level, :do_person, :goal, :due_date, :plan_hour, :actual_hour, :end_date, :created_at, :updated_at
json.url kadai_url(kadai, format: :json)
