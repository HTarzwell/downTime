class CreateDowntimeInstances < ActiveRecord::Migration[5.1]
  def change
    create_table :downtime_instances do |t|
      t.references :user, foreign_key: true
      t.datetime :date
      t.time :time
      t.string :activity

      t.timestamps
    end
  end
end
