require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../factories')

describe Measure do
  before(:each) do
    @measure = Factory.create(:measure)
  end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:value) }
  it { should validate_presence_of(:set_id) }
  it { should validate_presence_of(:author_id) }

  it "should create a new instance given valid attributes" do
    Factory.create(:measure)
  end

  it 'should be valid with a full set of valid attributes' do
    @measure.should be_valid
  end
end
