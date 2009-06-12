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

ActiveRecord::Schema.define(:version => 20090609063331) do

  create_table "pages", :force => true do |t|
    t.string   "slug"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["slug"], :name => "index_pages_on_slug"

  create_table "project_links", :force => true do |t|
    t.integer  "project_id"
    t.string   "title"
    t.string   "link_type"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_medias", :force => true do |t|
    t.integer  "project_id"
    t.string   "media_type"
    t.string   "url"
    t.integer  "width"
    t.integer  "height"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.text     "excerpt"
    t.integer  "position"
  end

  add_index "projects", ["position"], :name => "index_projects_on_position"
  add_index "projects", ["slug"], :name => "index_projects_on_slug", :unique => true

end
