class AddForeignKeyToTable < ActiveRecord::Migration
  def change
  	execute('ALTER TABLE logins ADD FOREIGN KEY fk_logins_people(person_id) REFERENCES people(person_id)')
  	execute('ALTER TABLE addresses ADD FOREIGN KEY fk_addresses_people(person_id) REFERENCES people(person_id)')
  	execute('ALTER TABLE sellars ADD FOREIGN KEY fk_sellars_people(person_id) REFERENCES people(person_id)')
  	execute('ALTER TABLE sellars ADD FOREIGN KEY fk_sellars_addresses(address_id) REFERENCES addresses(address_id)')
  	execute('ALTER TABLE products ADD FOREIGN KEY fk_products_sellars(sellar_id) REFERENCES sellars(sellar_id)')
  	execute('ALTER TABLE buyers ADD FOREIGN KEY fk_buyers_people(person_id) REFERENCES people(person_id)')
  	execute('ALTER TABLE buyers ADD FOREIGN KEY fk_buyers_addresses(address_id) REFERENCES addresses(address_id)')
  	execute('ALTER TABLE buyers ADD FOREIGN KEY fk_buyers_products(product_id) REFERENCES products(product_id)')
  	execute('ALTER TABLE dispatchers ADD FOREIGN KEY fk_dispatchers_products(product_id) REFERENCES products(product_id)')
  	execute('ALTER TABLE dispatchers ADD FOREIGN KEY fk_dispatchers_addresses(address_id) REFERENCES addresses(address_id)')
  end
end
