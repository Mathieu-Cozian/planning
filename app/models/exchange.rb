class Exchange < ApplicationRecord
  has_many :user_id
  has_many :booking_id
end
