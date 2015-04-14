json.array!(@articles) do |article|
  json.extract! article, :user_id, :title, :resume, :adress, :description
  json.url article_url(article, format: :json)
end
