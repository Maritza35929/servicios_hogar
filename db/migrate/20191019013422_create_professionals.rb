class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.string :nombre
      t.integer :telefono
      t.string :profesion_u_oficio
      t.text :servicios_ofrecidos

      t.timestamps
    end
  end
end
