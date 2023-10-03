class RenameTimeSlotElement < ActiveRecord::Migration[7.0]
  def change
    rename_column :timeslots, :start_date, :start_time
    rename_column :timeslots, :end_date, :end_time
  end
end
