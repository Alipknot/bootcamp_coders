class Curso < ApplicationRecord
  belongs_to :plan_formativo
  belongs_to :comuna
  has_many :cursos, through: :curso_modulo_tutors
  has_many :estudiantes
end
