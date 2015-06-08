json.array!(@planner_lists) do |planner_list|
  json.extract! planner_list, :id, :event, :budget, :user_id
  json.url planner_list_url(planner_list, format: :json)
end
