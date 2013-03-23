class Instituicao < ActiveRecord::Base
  attr_accessible :cnpj, :nome, :telefone, :email, :login, :senha, :endereco_attributes
  has_many :animals
  belongs_to :endereco
  accepts_nested_attributes_for :endereco
end
