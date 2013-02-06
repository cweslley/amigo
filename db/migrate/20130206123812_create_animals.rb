class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :raca
      t.integer :idade
      t.string :pelagem
      t.string :descricao
      t.integer :especie_id

      t.timestamps
    end
  end
end
