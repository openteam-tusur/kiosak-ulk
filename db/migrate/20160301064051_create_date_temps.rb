class CreateDateTemps < ActiveRecord::Migration
  def change
    create_table :date_temps do |t|
      t.date :date_title

      t.timestamps null: false
    end
  end
end
