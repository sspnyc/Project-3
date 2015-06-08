class CreateBudgetItems < ActiveRecord::Migration
  def change
    create_table :budget_items do |t|
      t.string :item
      t.integer :no_of_items
      t.float :price_of_each
      t.string :photo_url
      t.string :contact
      t.references :planner_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
