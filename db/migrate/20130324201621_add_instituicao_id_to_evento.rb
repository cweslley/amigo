class AddInstituicaoIdToEvento < ActiveRecord::Migration
  def change
    add_column :eventos, :instituicao_id, :integer
  end
end
