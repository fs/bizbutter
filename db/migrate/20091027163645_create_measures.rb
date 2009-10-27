class CreateMeasures < ActiveRecord::Migration
  def self.up
    create_table :measures do |t|
      t.belongs_to :set
      t.string :title
      t.string :value
      t.references :author
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :measures
  end
end
