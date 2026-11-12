class CreateVeiculos < ActiveRecord::Migration[8.1]
  def change
    create_table :veiculos do |t|
      t.references :categoria, null: false, foreign_key: true
      t.string :vei_placa
      t.string :vei_marca
      t.string :vei_modelo
      t.integer :vei_ano
      t.string :vei_cor
      t.integer :vei_kmatual
      t.integer :vei_kmultimarevisao
      t.string :vei_situacao

      t.timestamps
    end
  end
end
