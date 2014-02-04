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

ActiveRecord::Schema.define(:version => 20140204144500) do

  create_table "eventos", :force => true do |t|
    t.string   "nome"
    t.date     "data_evento"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "galerias", :force => true do |t|
    t.string   "titulo"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "evento_id"
  end

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.string   "resumo"
    t.datetime "data_publicacao"
    t.boolean  "ativo"
    t.text     "conteudo"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "premios", :force => true do |t|
    t.string   "titulo"
    t.string   "resumo"
    t.text     "descricao"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "ativo"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  add_index "premios", ["ativo"], :name => "index_premios_on_ativo"

  create_table "regulamentos", :force => true do |t|
    t.integer  "regulamento_id"
    t.text     "descricao"
    t.integer  "secao"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "regulamentos", ["regulamento_id"], :name => "index_regulamentos_on_regulamento_id"
  add_index "regulamentos", ["secao"], :name => "index_regulamentos_on_secao"

end
