class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, :id => false do |t|
      t.integer :product_id, :null => false
      t.integer :sellar_id, :null =>false
      t.string :product_no, :null => false
      t.string :product_name, :null => false
      t.text :description

      t.timestamps
    end
  end
end
