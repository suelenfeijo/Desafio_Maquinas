class CreateMaquinas < ActiveRecord::Migration[7.1]
  def change
    create_table :maquinas do |t|
      t.string :tipo
      t.string :nome
      t.text :descricao
      t.integer :meses_garantia
      t.date :data_compra
      t.boolean :quebrada

      t.timestamps
    end
  end
end
