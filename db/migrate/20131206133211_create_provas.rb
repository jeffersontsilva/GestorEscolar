class CreateProvas < ActiveRecord::Migration
  def change
    create_table :provas do |t|
      t.references :aluno, index: true
      t.string :descricao
      t.float :valor

      t.timestamps
    end
  end
end
