class CreateModulos < ActiveRecord::Migration[7.0]
  def change
    create_table :modulos do |t|
      t.string :descripcion, limit: 100
      t.integer :duracion_horas

    end
  end
end
