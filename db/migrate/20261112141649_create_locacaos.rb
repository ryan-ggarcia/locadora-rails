class CreateLocacaos < ActiveRecord::Migration[8.1]
  def change
    create_table :locacaos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :veiculo, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true
      t.datetime :loc_datareserva
      t.datetime :loc_dataretirada
      t.datetime :loc_dataprevista
      t.datetime :loc_dataretiradaefetiva
      t.datetime :loc_datadevolucao
      t.datetime :loc_datacancelamento
      t.datetime :loc_motivocancelamento
      t.integer :loc_kmretirada
      t.integer :loc_kmdevolucao
      t.decimal :loc_valordiario, precision: 10, scale: 2
      t.integer :loc_kmlivrediario
      t.decimal :loc_valorkmexcedente, precision: 10, scale: 2
      t.decimal :loc_valorprevisto, precision: 10, scale: 2
      t.integer :loc_qtddiarias
      t.decimal :loc_valordiarias, precision: 10, scale: 2
      t.decimal :loc_valorkmextra, precision: 10, scale: 2
      t.decimal :loc_valormulta, precision: 10, scale: 2
      t.decimal :loc_valortaxacancelamento, precision: 10, scale: 2
      t.decimal :loc_valortotal, precision: 10, scale: 2
      t.string :loc_situacao

      t.timestamps
    end
  end
end
