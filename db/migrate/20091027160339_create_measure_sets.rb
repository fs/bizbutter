class CreateMeasureSets < ActiveRecord::Migration
  def self.up
    create_table :measure_sets do |t|
      t.references :deal
      t.string :title
      t.references :author
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :measure_sets
  end
end
