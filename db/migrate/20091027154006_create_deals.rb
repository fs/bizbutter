class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
