class Aluno < ActiveRecord::Base
  belongs_to :turma
  has_many :provas, :dependent => :destroy

  validates_presence_of :nome, :dtnascimento, :sexo, :cpf, :rg, :endereco, :complemento, :bairro, :cidade, :estado, :telefone, :email, :turma_id, :message => "não foi preenchido"
  validates_length_of :cpf, :is => 11, :message => "deve conter 11 numeros"
  validates_numericality_of :cpf, :message => "Digite somente os numeros"
  validates_uniqueness_of :cpf, :message => "já cadastrado"

  attr_accessible :aluno_id, :nome, :dtnascimento, :sexo, :cpf, :rg, :endereco, :complemento, :bairro, :cidade, :estado, :telefone, :email, :turma_id

end
