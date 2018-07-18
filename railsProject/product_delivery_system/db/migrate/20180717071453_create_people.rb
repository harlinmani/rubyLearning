class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people, :id => false do |t|
      t.integer :person_id
      t.string :name
      t.string :mobile
      t.string :email
      t.timestamps
    end
  end
end
