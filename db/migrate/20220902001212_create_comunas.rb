class CreateComunas < ActiveRecord::Migration[7.0]
  def change
    create_table :comunas do |t|
      t.string :nombre, limit: 30
      t.references :region, null: false, foreign_key: true
    end
  end
end
