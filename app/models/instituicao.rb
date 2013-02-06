class Instituicao < ActiveRecord::Base
  attr_accessible :cnpj, :email, :endereco_id, :login, :nome, :senha, :telefone
end
