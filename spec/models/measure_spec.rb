require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Measure do
  before(:each) do
    @valid_attributes = {
      :set_id => 1,
      :title => "value for title",
      :value => "value for value",
      :author_id => 1,
      :published => false
    }
  end

  it "should create a new instance given valid attributes" do
    Measure.create!(@valid_attributes)
  end
end
