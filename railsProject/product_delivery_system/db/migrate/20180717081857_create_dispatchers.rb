class CreateDispatchers < ActiveRecord::Migration
  def change
    create_table :dispatchers, :id => false do |t|
      t.integer :dispatcher_id, :null => false
      t.integer :product_id, :null => false
      t.integer :address_id, :null => false
      t.integer :quantity, :null => false
      t.string :status, :null => false

      t.timestamps
    end
  end
end
