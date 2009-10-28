require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../factories')

describe MeasureSet do
  before(:each) do
    @measure_set = Factory.create(:measure_set)
  end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:author_id) }
  it { should validate_presence_of(:deal_id) }

  it "should create a new instance given valid attributes" do
    Factory.create(:measure_set)
  end

  it 'should be valid with a full set of valid attributes' do
    @measure_set.should be_valid
  end
end
