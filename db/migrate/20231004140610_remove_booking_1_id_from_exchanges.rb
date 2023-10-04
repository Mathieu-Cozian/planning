class RemoveBooking1IdFromExchanges < ActiveRecord::Migration[7.0]
  def change
    remove_column :exchanges, :booking_1_id
  end
end
