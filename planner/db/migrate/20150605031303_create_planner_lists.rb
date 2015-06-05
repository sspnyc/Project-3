class CreatePlannerLists < ActiveRecord::Migration
  def change
    create_table :planner_lists do |t|
      t.string :name
      t.string :event
      t.float :budget

      t.timestamps null: false
    end
  end
end
