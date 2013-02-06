class Evento < ActiveRecord::Base
  attr_accessible :data, :descricao, :horario, :local
end
