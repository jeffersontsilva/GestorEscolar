class Aula < ActiveRecord::Base
  belongs_to :professor
  belongs_to :turma 
  
  validates :turma_id, :professor_id, :presence => {:message => "nao foi preenchido." }
  validates_uniqueness_of :professor_id, :scope => :turma_id, :message => "ja cadastrado para essa turma!"

  attr_accessible :professor_id, :turma_id
  
end
