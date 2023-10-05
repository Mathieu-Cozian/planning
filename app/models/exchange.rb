class Exchange < ApplicationRecord
belongs_to :user_1, class_name: 'User'
belongs_to :user_2, class_name: 'User'
belongs_to :booking_2, class_name: 'Booking'
end
