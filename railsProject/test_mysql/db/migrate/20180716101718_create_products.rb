class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, :id => false, :primary_key => 'product_id' do |t|

    	
      t.integer :product_id, :null => false, :unique => true, :add_index => true
      t.string :name, :null => false
      t.text :description
    

      t.timestamps
    end
    add_index :products, :product_id
  end
end
