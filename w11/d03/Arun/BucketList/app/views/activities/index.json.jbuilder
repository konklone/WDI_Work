json.array!(@activities) do |activity|
  json.extract! activity, :id, :title, :done
  json.url activity_url(activity, format: :json)
end
