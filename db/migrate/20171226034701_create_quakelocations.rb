class CreateQuakelocations < ActiveRecord::Migration[5.1]
  def change
    create_table :quakelocations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.datetime :time
      t.decimal :mag

      t.timestamps
    end
  end
end
