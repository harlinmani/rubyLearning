class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses, :id => false do |t|
      t.integer :address_id, :null => false
      t.text :address , :null => false
      t.string :country, :null => false
      t.string :state, :null => false
      t.string :city, :null => false
      t.integer :pin, :null => false
      t.integer :person_id, :null => false

      t.timestamps
    end
  end
end
