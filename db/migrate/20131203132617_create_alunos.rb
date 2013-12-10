class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.date :dtnascimento
      t.string :sexo
      t.integer :cpf
      t.string :rg
      t.string :endereco
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.integer :telefone
      t.string :email
      t.references :turma, index: true

      t.timestamps
    end
  end
end
