class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string :title
      t.string :description
      t.decimal :start_price
      t.datetime :bid_end_date
      t.string :picture
      t.integer :category_id
      t.integer :user_id
      t.timestamps
    end
    add_index :items, :user_id
    add_index :items, :category_id
  end


end
