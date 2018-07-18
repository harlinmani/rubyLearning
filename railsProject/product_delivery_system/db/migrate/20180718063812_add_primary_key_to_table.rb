class AddPrimaryKeyToTable < ActiveRecord::Migration
  def change
  	execute('ALTER TABLE people MODIFY COLUMN person_id INT auto_increment Primary Key')
  	execute('ALTER TABLE logins MODIFY COLUMN username VARCHAR(50) Primary Key')
  	execute('ALTER TABLE addresses MODIFY COLUMN address_id INT auto_increment Primary Key')
  	execute('ALTER TABLE sellars MODIFY COLUMN sellar_id INT auto_increment Primary Key')
  	execute('ALTER TABLE products MODIFY COLUMN product_id INT auto_increment Primary Key')
  	execute('ALTER TABLE dispatchers MODIFY COLUMN dispatcher_id INT auto_increment Primary Key')
  end
end
