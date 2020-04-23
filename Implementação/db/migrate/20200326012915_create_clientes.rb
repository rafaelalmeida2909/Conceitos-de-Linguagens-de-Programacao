class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :Nome
      t.string :Email
      t.string :CPF
      t.string :Telefone
      t.string :Sexo
      t.integer :Idade

      t.timestamps
    end
  end
end
