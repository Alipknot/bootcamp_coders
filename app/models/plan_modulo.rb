class PlanModulo < ApplicationRecord
  belongs_to :plan_formativo
  belongs_to :modulo
end
