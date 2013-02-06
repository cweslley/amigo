class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.string :banco
      t.string :agencia
      t.string :conta

      t.timestamps
    end
  end
end
