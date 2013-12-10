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

ActiveRecord::Schema.define(version: 20131206133211) do

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.date     "dtnascimento"
    t.string   "sexo"
    t.integer  "cpf"
    t.string   "rg"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.integer  "telefone"
    t.string   "email"
    t.integer  "turma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alunos", ["turma_id"], name: "index_alunos_on_turma_id"

  create_table "aulas", force: true do |t|
    t.integer  "professor_id"
    t.integer  "turma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aulas", ["professor_id"], name: "index_aulas_on_professor_id"
  add_index "aulas", ["turma_id"], name: "index_aulas_on_turma_id"

  create_table "professors", force: true do |t|
    t.string   "nome"
    t.date     "dtnascimento"
    t.integer  "cpf"
    t.string   "rg"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "cidade"
    t.string   "estado"
    t.integer  "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provas", force: true do |t|
    t.integer  "aluno_id"
    t.string   "descricao"
    t.float    "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "provas", ["aluno_id"], name: "index_provas_on_aluno_id"

  create_table "turmas", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
