class CreateCursoModuloTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :curso_modulo_tutors do |t|
      t.references :tutor, null: false, foreign_key: true
      t.references :modulo, null: false, foreign_key: true
      t.references :curso, null: false, foreign_key: true

    end
  end
end
