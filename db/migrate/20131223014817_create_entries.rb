class CreateEntries < ActiveRecord::Migration
  def up
    create_table :entries do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :category_id

      t.timestamps
    end
  end
  def down
  	drop_table :entries
  end
end
