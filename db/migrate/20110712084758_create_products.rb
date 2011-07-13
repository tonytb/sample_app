class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :product_name
      t.string :model
      t.string :description
      t.string :software
      t.string :product_literature
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
