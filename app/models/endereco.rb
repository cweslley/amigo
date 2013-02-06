class Endereco < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :complemento, :estado
end
