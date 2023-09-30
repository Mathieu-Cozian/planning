class CreateTimeslots < ActiveRecord::Migration[7.0]
  def change
    create_table :timeslots do |t|
      t.string :task
      t.datetime :start_date
      t.datetime :end_date
      t.integer :number_employee
      t.timestamps
    end
  end
end
