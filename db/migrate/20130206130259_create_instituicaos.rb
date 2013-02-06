class CreateInstituicaos < ActiveRecord::Migration
  def change
    create_table :instituicaos do |t|
      t.string :cnpj
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :login
      t.string :senha
      t.integer :endereco_id

      t.timestamps
    end
  end
end
