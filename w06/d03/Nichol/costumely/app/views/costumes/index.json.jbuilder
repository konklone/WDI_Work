json.array!(@costumes) do |costume|
  json.extract! costume, :name, :img_url
  json.url costume_url(costume, format: :json)
end
