class CreateAulas < ActiveRecord::Migration
  def change
    create_table :aulas do |t|
      t.references :professor, index: true
      t.references :turma, index: true

      t.timestamps
    end
  end
end
