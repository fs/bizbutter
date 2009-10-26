require "#{Rails.root}/spec/factories"

Given /^I have patients (.+)$/ do |patients|
	patients.split(', ').each do |name|
		names = name.split(' ')
		Factory.create(:patient, :first_name => names[0], :last_name => names[1])
	end
end

Given /^I have no patients$/ do
	Patient.delete_all
end

Then /^I should have ([0-9]+) patient$/ do |count|
	Patient.count.should == count.to_i
end