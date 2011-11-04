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

ActiveRecord::Schema.define(:version => 20111104074044) do

  create_table "contract_templates", :force => true do |t|
    t.string   "name"
    t.text     "boilerplate", :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :force => true do |t|
    t.text     "boilerplate", :limit => 255
    t.binary   "signature"
    t.string   "signinghash"
    t.datetime "datesigned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "signer_id"
    t.string   "name"
  end

  create_table "signers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cosigner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
