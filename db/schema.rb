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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140128153759) do

  create_table "conteudos", :force => true do |t|
    t.string   "titulo"
    t.string   "resumo"
    t.text     "descricao"
    t.datetime "data_publicacao"
    t.boolean  "ativo"
    t.string   "tipo"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "conteudos", ["data_publicacao"], :name => "index_conteudos_on_data_publicacao"

end
