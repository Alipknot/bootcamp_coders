class Tutor < ApplicationRecord
  belongs_to :comuna
  has_many :cursos, through: :curso_modulo_tutors
end
