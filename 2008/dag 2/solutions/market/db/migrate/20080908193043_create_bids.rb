class CreateBids < ActiveRecord::Migration
  def self.up
    create_table :bids do |t|
      t.integer :item_id
      t.integer :person_id
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :bids
  end
end
