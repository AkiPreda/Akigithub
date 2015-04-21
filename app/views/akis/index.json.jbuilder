json.array!(@akis) do |aki|
  json.extract! aki, :id, :title, :body
  json.url aki_url(aki, format: :json)
end
