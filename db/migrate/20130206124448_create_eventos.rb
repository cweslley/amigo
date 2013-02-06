class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :local
      t.date :data
      t.string :horario
      t.string :descricao

      t.timestamps
    end
  end
end
