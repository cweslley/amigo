class Endereco < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :complemento, :estado
  has_one :instituicao
end
