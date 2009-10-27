require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe MeasureSet do
  before(:each) do
    @valid_attributes = {
      :deal_id => 1,
      :title => "value for title",
      :author_id => 1,
      :published => false
    }
  end

  it "should create a new instance given valid attributes" do
    MeasureSet.create!(@valid_attributes)
  end
  
end
