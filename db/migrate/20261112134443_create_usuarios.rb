class CreateUsuarios < ActiveRecord::Migration[8.1]
  def change
    create_table :usuarios do |t|
      t.string :usu_nome, null: false
      t.string :usu_email, null: false, unique: true
      t.string :usu_senha, null: false
      t.string :usu_perfil, null: false, default: "ATENDENTE"
      t.boolean :usu_ativo, null: false, default: true

      t.timestamps
    end
  end
end
