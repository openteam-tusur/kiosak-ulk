class CreateDateTemps < ActiveRecord::Migration
  def change
    create_table :date_temps do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
