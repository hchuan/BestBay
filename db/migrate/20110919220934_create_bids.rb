class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :item_id
      t.integer :user_id
      t.decimal :bid_price

      t.timestamps
    end
    add_index :bids, :user_id
    add_index :bids, :item_id
  end

end
