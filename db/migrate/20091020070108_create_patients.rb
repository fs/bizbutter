class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :title
			t.string :first_name
			t.string :last_name
			t.string :email
			t.string :nickname
			t.string :address1
			t.string :city
			t.string :state
			t.string :zip
			t.string :phone
			t.string :work_phone
			t.string :cell_phone
			t.string :social_security_number
			t.date :birth_date
			t.datetime :first_visit
			t.datetime :last_visit
			t.string :sex
			t.references :category
			t.string :student
			t.string :patient_type
			t.string :married
			t.string :spouse
			t.string :account
			t.string :work_status
			t.references :clinic
			t.references :referred_by
			t.string :occupation
			t.string :employer
			t.string :work_address1
			t.string :work_city
			t.string :work_state
			t.string :work_zip
			t.text :work_comment
			t.boolean :release_info
			t.boolean :send_statement
			t.boolean :finance_charge
			t.boolean :authorization_on_file
			t.boolean :supress_mail
			t.boolean :inactive
			t.string :top_label

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
