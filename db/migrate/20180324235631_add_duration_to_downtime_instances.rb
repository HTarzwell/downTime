class AddDurationToDowntimeInstances < ActiveRecord::Migration[5.1]
  def change
    add_column :downtime_instances, :duration, :integer
  end
end
