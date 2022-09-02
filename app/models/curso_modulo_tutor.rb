class CursoModuloTutor < ApplicationRecord
  belongs_to :tutor
  belongs_to :modulo
  belongs_to :curso
end
