class Turma < ActiveRecord::Base
  has_many :aulas, :dependent => :destroy
  has_many :alunos, :dependent => :restrict_with_error
  validates_uniqueness_of :nome, :message => "já cadastrado"
  validates_presence_of :nome, :message => "deve ser preenchido"
  attr_accessible :turma_id, :nome
  
end
