class Animal < ActiveRecord::Base
  attr_accessible :descricao, :especie_id, :idade, :pelagem, :raca
end
