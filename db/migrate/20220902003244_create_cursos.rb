class CreateCursos < ActiveRecord::Migration[7.0]
  def change
    create_table :cursos do |t|
      t.date :fecha_inicio
      t.date :fecha_termino
      t.string :codigo_curso, limit: 30
      t.references :plan_formativo, null: false, foreign_key: true

    end
  end
end
