class AddInstituicaoIdToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :instituicao_id, :integer
  end
end
