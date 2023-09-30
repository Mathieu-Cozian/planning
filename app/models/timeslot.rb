class Timeslot < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :task, presence: true
  validates :number_employee, presence: true
end
