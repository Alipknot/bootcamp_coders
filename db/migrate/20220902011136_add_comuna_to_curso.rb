class AddComunaToCurso < ActiveRecord::Migration[7.0]
  def change
    add_reference :cursos, :comuna, null: false, foreign_key: true
  end
end
