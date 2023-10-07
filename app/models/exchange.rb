class Exchange < ApplicationRecord
belongs_to :user_1, class_name: 'User', dependent: :destroy
belongs_to :user_2, class_name: 'User', dependent: :destroy
belongs_to :booking_2, class_name: 'Booking', dependent: :destroy
end
