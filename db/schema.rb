# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_19_131325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "content"
    t.string "url"
    t.string "heasline_image"
    t.string "image_1"
    t.string "image_2"
    t.string "image_3"
    t.string "image_4"
    t.string "image_5"
    t.string "publish_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "post_tags", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "project_id"
    t.bigint "blog_id"
    t.index ["blog_id"], name: "index_post_tags_on_blog_id"
    t.index ["project_id"], name: "index_post_tags_on_project_id"
    t.index ["tag_id"], name: "index_post_tags_on_tag_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "description"
    t.string "frontend_repo"
    t.string "backend_repo"
    t.string "url"
    t.string "image"
    t.string "video"
    t.string "publish_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

  create_table "tech_tags", force: :cascade do |t|
    t.bigint "technology_id", null: false
    t.bigint "project_id"
    t.bigint "blog_id"
    t.index ["blog_id"], name: "index_tech_tags_on_blog_id"
    t.index ["project_id"], name: "index_tech_tags_on_project_id"
    t.index ["technology_id"], name: "index_tech_tags_on_technology_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "post_tags", "blogs"
  add_foreign_key "post_tags", "projects"
  add_foreign_key "post_tags", "tags"
  add_foreign_key "tech_tags", "blogs"
  add_foreign_key "tech_tags", "projects"
  add_foreign_key "tech_tags", "technologies"
end
