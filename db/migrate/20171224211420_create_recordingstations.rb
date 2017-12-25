class CreateRecordingstations < ActiveRecord::Migration[5.1]
  def change
    create_table :recordingstations do |t|
      t.string :quakeId
      t.date :updated
      t.string :place
      t.string :quaketype
      t.decimal :horizontalError
      t.decimal :depthError
      t.decimal :magError
      t.integer :magNst
      t.string :status
      t.string :locationSource
      t.string :stationCode

      t.timestamps
    end
  end
end
