class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.string :event
      t.float :budget
      t.string :item
      t.integer :no_item
      t.float :price
      t.string :photo_url
      t.string :website_add
      t.string :contact_info

      t.timestamps null: false
    end
  end
end
