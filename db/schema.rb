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

ActiveRecord::Schema.define(:version => 20130324204049) do

  create_table "animals", :force => true do |t|
    t.string   "raca"
    t.integer  "idade"
    t.string   "pelagem"
    t.string   "descricao"
    t.integer  "especie_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "instituicao_id"
  end

  create_table "coletamaterials", :force => true do |t|
    t.string   "descricao"
    t.integer  "instituicao_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "conta", :force => true do |t|
    t.string   "banco"
    t.string   "agencia"
    t.string   "conta"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "enderecos", :force => true do |t|
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "estado"
    t.string   "complemento"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "especies", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "eventos", :force => true do |t|
    t.string   "local"
    t.date     "data"
    t.string   "horario"
    t.string   "descricao"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "instituicao_id"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "instituicaos", :force => true do |t|
    t.string   "cnpj"
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.string   "login"
    t.string   "senha"
    t.integer  "endereco_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
