json.array!(@toreads) do |toread|
  json.extract! toread, :id, :title, :description, :read
  json.url toread_url(toread, format: :json)
end
