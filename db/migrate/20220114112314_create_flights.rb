class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.datetime :start_time, null:false
      t.integer :duration, null:false
      t.references :origin, null: false, foreign_key: { to_table: :airports }
      t.references :destination, null: false, foreign_key: { to_table: :airports }  
      t.timestamps
    end
  end
end
