class PlanFormativo < ApplicationRecord
    has_many :modulos, through: :plan_modulos
    has_many :cursos
end
