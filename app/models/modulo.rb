class Modulo < ApplicationRecord
    has_many :plan_formativos, through: :plan_modulos
end
