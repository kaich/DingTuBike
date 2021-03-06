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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160929030625) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.date "start_time"
    t.date "end_time"
    t.string "rule"
    t.string "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover"
    t.integer "cached_votes_total", default: 0
    t.integer "cached_votes_score", default: 0
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.integer "cached_weighted_score", default: 0
    t.integer "cached_weighted_total", default: 0
    t.float "cached_weighted_average", default: 0.0
    t.index ["cached_votes_down"], name: "index_activities_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_activities_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_activities_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_activities_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_activities_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_activities_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_activities_on_cached_weighted_total"
  end

  create_table "bikes", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "model"
    t.string "category"
    t.string "material"
    t.string "made_address"
    t.date "market_time"
    t.float "price"
    t.string "information"
    t.string "bikeable_type"
    t.integer "bikeable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "avatars"
    t.integer "cached_votes_total", default: 0
    t.integer "cached_votes_score", default: 0
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.integer "cached_weighted_score", default: 0
    t.integer "cached_weighted_total", default: 0
    t.float "cached_weighted_average", default: 0.0
    t.index ["bikeable_type", "bikeable_id"], name: "index_bikes_on_bikeable_type_and_bikeable_id"
    t.index ["cached_votes_down"], name: "index_bikes_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_bikes_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_bikes_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_bikes_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_bikes_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_bikes_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_bikes_on_cached_weighted_total"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title", limit: 50, default: ""
    t.text "comment"
    t.string "commentable_type"
    t.integer "commentable_id"
    t.integer "user_id"
    t.string "role", default: "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.date "start_time"
    t.date "end_time"
    t.string "starting"
    t.string "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "nick"
    t.date "birthday"
    t.string "sex"
    t.string "home_address"
    t.string "qq_number"
    t.string "phone"
    t.string "signature"
    t.string "intro"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

end
