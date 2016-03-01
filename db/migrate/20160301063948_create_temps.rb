class CreateTemps < ActiveRecord::Migration
  def change
    create_table :temps do |t|
      t.string :temperature
      t.integer :date_temp_id
      t.integer :place_id

      t.timestamps null: false
    end
  end
end
