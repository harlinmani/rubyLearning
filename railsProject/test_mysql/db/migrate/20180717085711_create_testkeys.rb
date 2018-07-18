class CreateTestkeys < ActiveRecord::Migration
  def change
    create_table :testkeys, :null => false do |t|
      t.integer :testkey_id, :null => false
      #:unique => true, :index => true
      t.string :name, :null => false

      t.timestamps
      #t.add_index :name, :unique => false
    end
  end
end
