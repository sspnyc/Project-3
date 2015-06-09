json.array!(@lists) do |list|
  json.extract! list, :id, :item, :description, :photo, :contact, :cost
  json.url list_url(list, format: :json)
end
