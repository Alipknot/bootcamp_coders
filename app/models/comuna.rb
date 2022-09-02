class Comuna < ApplicationRecord
  belongs_to :region
  has_many :tutors
  has_many :estudiantes
  has_many :cursos
end
