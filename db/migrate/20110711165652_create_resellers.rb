class CreateResellers < ActiveRecord::Migration
  def self.up
    create_table :resellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :terriorty
      t.string :address
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :resellers
  end
end
