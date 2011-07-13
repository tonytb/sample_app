class CreateRewards < ActiveRecord::Migration
  def self.up
    create_table :rewards do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :points

      t.timestamps
    end
  end

  def self.down
    drop_table :rewards
  end
end
