json.array!(@notes) do |note|
  json.extract! note, :text, :date
  json.url note_url(note, format: :json)
end
