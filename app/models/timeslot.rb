class Timeslot < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :task, presence: true
  validates :number_employee, presence: true
  default_scope -> { order(:start_time) }
end
