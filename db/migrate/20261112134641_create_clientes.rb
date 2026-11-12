class CreateClientes < ActiveRecord::Migration[8.1]
  def change
    create_table :clientes do |t|
      t.string :cli_nome, null: false
      t.string :cli_cpf, null: false, unique: true
      t.string :cli_email, null: false, unique: true
      t.string :cli_telefone
      t.date :cli_datanascimento, null: false
      t.string :cli_cnh, null: false, unique: true
      t.date :cli_cnhvalidade, null: false
      t.boolean :cli_ativo, null: false, default: true

      t.timestamps
    end
  end
end
