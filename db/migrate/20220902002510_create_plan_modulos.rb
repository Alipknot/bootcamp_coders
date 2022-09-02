class CreatePlanModulos < ActiveRecord::Migration[7.0]
  def change
    create_table :plan_modulos do |t|
      t.references :plan_formativo, null: false, foreign_key: true
      t.references :modulo, null: false, foreign_key: true

    end
  end
end
