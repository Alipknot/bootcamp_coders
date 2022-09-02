class CreatePlanFormativos < ActiveRecord::Migration[7.0]
  def change
    create_table :plan_formativos do |t|
      t.string :descripcion, limit: 100
      t.integer :duracion_horas
      t.string :codigo_plan_formativo, limit: 30

    end
  end
end
