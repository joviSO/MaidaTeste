json.extract! person, :id, :user_id, :name, :nickname, :gender, :weight, :height, :ideal_weight, :created_at, :updated_at
json.url person_url(person, format: :json)
