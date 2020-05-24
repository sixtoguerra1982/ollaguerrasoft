class CreateComunas < ActiveRecord::Migration[5.2]
  def change
    create_table :comunas do |t|
      t.string :nombre
      t.string :codigo
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
