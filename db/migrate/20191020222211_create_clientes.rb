class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :direccion
      t.integer :telefono
      t.string :servicio_requerido
      t.text :descripcion_del_servicio_requerido

      t.timestamps
    end
  end
end
