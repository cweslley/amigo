class Animal < ActiveRecord::Base
  attr_accessible :descricao, :especie_id, :idade, :pelagem, :raca, :foto
  has_attached_file :foto, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }

  belongs_to :instituicao
  belongs_to :especie
end
