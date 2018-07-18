class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers, :id => false do |t|
      t.integer :product_id
      t.integer :person_id
      t.integer :address_id

      t.timestamps
    end
  end
end
