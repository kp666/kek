json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :user_id, :from, :to
  json.url event_url(event, format: :json)
end
