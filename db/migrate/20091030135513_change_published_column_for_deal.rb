class ChangePublishedColumnForDeal < ActiveRecord::Migration
  def self.up
    change_column :deals, :published, :boolean, :default => true
    Deal.update_all({:published => true}, {:published => nil})
  end

  def self.down
    change_column :deals, :published, :boolean, :default => nil
  end
end
