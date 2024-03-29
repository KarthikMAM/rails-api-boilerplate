# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_180_401_004_833) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'credits', force: :cascade do |t|
    t.bigint 'person_id', null: false
    t.bigint 'movie_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[movie_id], name: 'index_credits_on_movie_id'
    t.index %w[person_id movie_id], name: 'index_credits_on_person_id_and_movie_id', unique: true
    t.index %w[person_id], name: 'index_credits_on_person_id'
  end

  create_table 'movies', force: :cascade do |t|
    t.string 'name', null: false
    t.date 'release_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'people', force: :cascade do |t|
    t.string 'name', null: false
    t.date 'dob'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'credits', 'movies'
  add_foreign_key 'credits', 'people'
end
