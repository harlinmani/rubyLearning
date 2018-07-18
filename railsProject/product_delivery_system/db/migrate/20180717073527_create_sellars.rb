class CreateSellars < ActiveRecord::Migration
  def change
    create_table :sellars, :id => false do |t|
      t.integer :sellar_id, :null => false
      t.integer :person_id, :null => false
      t.integer :address_id, :null => false

      t.timestamps
    end
  end
end
