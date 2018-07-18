class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins , :id => false do |t|
      t.string :username, :null => false
      t.string :password, :null => false
      t.integer :person_id, :null => false

      t.timestamps
    end
  end
end
