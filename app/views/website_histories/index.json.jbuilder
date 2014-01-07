json.array!(@website_histories) do |website_history|
  json.extract! website_history, :id, :website_id, :success, :body
  json.url website_history_url(website_history, format: :json)
end
