class CreateCategoria < ActiveRecord::Migration[8.1]
  def change
    create_table :categoria do |t|
      t.string :cat_nome, null: false, unique: true
      t.decimal :cat_valordiario, precision: 10, scale: 2
      t.integer :cat_kmlivrediario
      t.decimal :cat_valorkmexcedente, precision: 10, scale: 2
      t.integer :cat_idademinima
      t.boolean :cat_ativo

      t.timestamps
    end
  end
end
