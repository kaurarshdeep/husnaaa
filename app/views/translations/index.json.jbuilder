json.array!(@translations) do |translation|
  json.extract! translation, :id, :punjabi, :urdu
  json.url translation_url(translation, format: :json)
end
