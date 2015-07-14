# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150714002532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_artists", force: :cascade do |t|
    t.integer  "album_id",   null: false
    t.integer  "artist_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "album_artists", ["album_id", "artist_id"], name: "index_album_artists_on_album_id_and_artist_id", using: :btree

  create_table "album_genres", force: :cascade do |t|
    t.integer  "album_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "album_genres", ["album_id", "genre_id"], name: "index_album_genres_on_album_id_and_genre_id", using: :btree

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.integer  "length"
    t.string   "image"
    t.string   "release_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "artist_genres", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artist_genres", ["artist_id", "genre_id"], name: "index_artist_genres_on_artist_id_and_genre_id", using: :btree

  create_table "artist_playlists", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "artist_playlists", ["artist_id", "playlist_id"], name: "index_artist_playlists_on_artist_id_and_playlist_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genre_playlists", force: :cascade do |t|
    t.integer  "genre_id"
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "genre_playlists", ["genre_id", "playlist_id"], name: "index_genre_playlists_on_genre_id_and_playlist_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_playlists", force: :cascade do |t|
    t.integer  "song_id"
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "song_playlists", ["song_id", "playlist_id"], name: "index_song_playlists_on_song_id_and_playlist_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.integer  "artist_id",    null: false
    t.integer  "album_id",     null: false
    t.integer  "genre_id",     null: false
    t.integer  "length",       null: false
    t.string   "title",        null: false
    t.string   "release_date"
    t.integer  "sort_order"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["genre_id"], name: "index_songs_on_genre_id", using: :btree

end
