class AddEmailToResellers < ActiveRecord::Migration
  def self.up
    add_column :resellers, :email, :srting
  end

  def self.down
    remove_column :resellers, :email
  end
end
