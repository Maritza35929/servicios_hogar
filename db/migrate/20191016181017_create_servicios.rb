class CreateServicios < ActiveRecord::Migration[6.0]
  def change
    create_table :servicios do |t|
      t.string :profesional
      t.text :descripcion

      t.timestamps
    end
  end
end
