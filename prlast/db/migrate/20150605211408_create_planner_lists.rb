class CreatePlannerLists < ActiveRecord::Migration
  def change
    create_table :planner_lists do |t|
      t.string :event
      t.float :budget
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
