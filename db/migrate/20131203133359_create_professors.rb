class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :nome
      t.date :dtnascimento
      t.integer :cpf
      t.string :rg
      t.string :endereco
      t.string :complemento
      t.string :cidade
      t.string :estado
      t.integer :telefone
      t.string :email

      t.timestamps
    end
  end
end
