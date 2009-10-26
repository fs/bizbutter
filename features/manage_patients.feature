Feature: Manage Patients
  As an doctor
  I want to create and manage patients

Scenario: Patients List
  Given I have patients Kyle Brohlowsky, Eric Cartman, Stan Marsh
  When I go to the list of patients
  Then I should see "Brohlowsky"
  And I should see "Cartman"
  And I should see "Marsh"

Scenario: Create Valid Patient
  Given I have no patients
  And I am on the list of patients
  When I follow "New patient"
  And I fill in "First name" with "Eric"
  And I fill in "Last name" with "Cartman"
  And I fill in "Email" with "cartman@southpark.com"
  And I fill in "Address" with "Southpark"
  And I fill in "City" with "Southpark"
  And I fill in "State" with "Colorado"
  And I fill in "Zip" with "48347"
  And I fill in "Phone" with "123-33-23"
  And I fill in "SS#" with "324-09-8325"
  And I fill in "Account" with "123456"
  And I press "Save"
  Then I should see "Successfully created a patient"
  And I should have 1 patient
  When I go to the list of patients
  Then I should see "Eric"
  And I should see "Cartman"