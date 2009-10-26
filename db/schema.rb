# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091020070108) do

  create_table "patients", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "nickname"
    t.string   "address1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "work_phone"
    t.string   "cell_phone"
    t.string   "social_security_number"
    t.date     "birth_date"
    t.datetime "first_visit"
    t.datetime "last_visit"
    t.string   "sex"
    t.integer  "category_id"
    t.string   "student"
    t.string   "patient_type"
    t.string   "married"
    t.string   "spouse"
    t.string   "account"
    t.string   "work_status"
    t.integer  "clinic_id"
    t.integer  "referred_by_id"
    t.string   "occupation"
    t.string   "employer"
    t.string   "work_address1"
    t.string   "work_city"
    t.string   "work_state"
    t.string   "work_zip"
    t.text     "work_comment"
    t.boolean  "release_info"
    t.boolean  "send_statement"
    t.boolean  "finance_charge"
    t.boolean  "authorization_on_file"
    t.boolean  "supress_mail"
    t.boolean  "inactive"
    t.string   "top_label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
