class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :telefono
      t.string :celular
      t.string :direccion
      t.string :referenciadir
      t.string :ocacion
      t.string :hora
      t.integer :valor

      t.timestamps null: false
    end
  end
end
