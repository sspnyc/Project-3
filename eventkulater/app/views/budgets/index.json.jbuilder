json.array!(@budgets) do |budget|
  json.extract! budget, :id, :name, :event, :budget, :item, :no_item, :price, :photo_url, :website_add, :contact_info
  json.url budget_url(budget, format: :json)
end
