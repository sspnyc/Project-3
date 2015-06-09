class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :item
      t.string :description
      t.string :photo
      t.string :contact
      t.float :cost

      t.timestamps null: false
    end
  end
end
