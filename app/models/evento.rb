class Evento < ActiveRecord::Base
  attr_accessible :data, :descricao, :horario, :local, :instituicao_id, :foto
  has_attached_file :foto, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }
  belongs_to :instituicao
end
