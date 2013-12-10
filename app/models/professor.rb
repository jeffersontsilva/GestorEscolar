class Professor < ActiveRecord::Base
  has_many :aulas, :dependent => :destroy
  validates_presence_of :nome, :dtnascimento, :cpf, :rg, :endereco, :complemento, :cidade, :estado, :telefone, :email, :message => "não foi preenchido"
  validates_length_of :cpf, :is => 11, :message => "deve conter 11 numeros"
  validates_numericality_of :cpf, :message => "Digite somente os numeros"
  validates_uniqueness_of :cpf, :message => "já cadastrado"
  attr_accessible :professor_id, :nome, :dtnascimento, :cpf, :rg, :endereco, :complemento, :cidade, :estado, :telefone, :email
end
