json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :email, :body, :url_id
  json.url comment_url(comment, format: :json)
end
