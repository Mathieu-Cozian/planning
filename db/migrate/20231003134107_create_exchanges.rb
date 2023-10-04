class CreateExchanges < ActiveRecord::Migration[7.0]
  def change
    create_table :exchanges do |t|
      t.string :status
      t.references :user_1_id, foreign_key: { to_table: 'users' }
      t.references :user_2_id, foreign_key: { to_table: 'users' }
      t.references :booking_1_id, null: false, foreign_key: { to_table: :bookings }
      t.references :booking_2_id, null: false, foreign_key: { to_table: :bookings }
      t.timestamps
    end
  end
end
