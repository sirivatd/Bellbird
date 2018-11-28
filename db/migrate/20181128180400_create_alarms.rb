class CreateAlarms < ActiveRecord::Migration[5.2]
  def change
    create_table :alarms do |t|
      t.string :description, null: false
      t.time :alarm_time, null: false
      t.date :alarm_date, null: false

      t.timestamps
    end
  end
end
