class CreateEarthquakes < ActiveRecord::Migration[5.1]
  def change
    create_table :earthquakes do |t|
      t.datetime :time
      t.float :latitude
      t.float :longitude
      t.decimal :depth
      t.decimal :mag
      t.string :magType
      t.integer :nst
      t.decimal :gap
      t.decimal :dmin
      t.decimal :rms
      t.string :networkCode
      t.string :quakeId

      t.timestamps
    end
  end
end
