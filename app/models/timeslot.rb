class Timeslot < ApplicationRecord
  validates :start_date, presence: true
  validatable :end_date, presence: true
  validates :tache, presence: true
  validates :number_employee, presence: true
end
