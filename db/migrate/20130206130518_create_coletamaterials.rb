class CreateColetamaterials < ActiveRecord::Migration
  def change
    create_table :coletamaterials do |t|
      t.string :descricao
      t.integer :instituicao_id

      t.timestamps
    end
  end
end
