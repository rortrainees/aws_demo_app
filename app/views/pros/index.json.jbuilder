json.array!(@pros) do |pro|
  json.extract! pro, :id, :title, :desc
  json.url pro_url(pro, format: :json)
end
