class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :estado
      t.string :complemento

      t.timestamps
    end
  end
end
