# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110824124626) do

  create_table "points", :force => true do |t|
    t.float    "lat"
    t.float    "lng"
    t.integer  "polygon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polygons", :force => true do |t|
    t.string   "name"
    t.string   "stroke_color",   :default => "#FF0000", :null => false
    t.float    "stroke_opacity", :default => 0.8,       :null => false
    t.integer  "stroke_weight",  :default => 2,         :null => false
    t.string   "fill_color",     :default => "#FF0000", :null => false
    t.float    "fill_opacity",   :default => 0.35,      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
