require 'spec_helper'
require 'factories'

describe Patient do
  before(:each) do
		@patient = Factory.create(:patient)
  end

	it { should validate_presence_of :first_name }
	it { should validate_presence_of :last_name }
	it { should validate_presence_of :email }
	it { should validate_presence_of :address1 }
	it { should validate_presence_of :city }
	it { should validate_presence_of :state }
	it { should validate_presence_of :zip }
	it { should validate_presence_of :phone }
	it { should validate_presence_of :social_security_number }
	it { should validate_presence_of :birth_date }
	it { should validate_presence_of :sex }

  it "should create a new instance given valid attributes" do
    Factory.create(:patient)
  end

	it 'should be valid with a full set of valid attributes' do
		@patient.should be_valid
	end
end
