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

ActiveRecord::Schema.define(version: 20_201_116_183_357) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'game_levels', force: :cascade do |t|
    t.integer 'priority'
    t.bigint 'game_id'
    t.bigint 'level_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['game_id'], name: 'index_game_levels_on_game_id'
    t.index ['level_id'], name: 'index_game_levels_on_level_id'
  end

  create_table 'games', force: :cascade do |t|
    t.string 'game_name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'levels', force: :cascade do |t|
    t.integer 'game_level'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'game_levels', 'games'
  add_foreign_key 'game_levels', 'levels'
end
