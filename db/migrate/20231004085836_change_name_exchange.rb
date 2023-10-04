class ChangeNameExchange < ActiveRecord::Migration[7.0]
  def change
    rename_column :exchanges, :user_1_id_id, :user_1_id
    rename_column :exchanges, :user_2_id_id, :user_2_id
    rename_column :exchanges, :booking_1_id_id, :booking_1_id
    rename_column :exchanges, :booking_2_id_id, :booking_2_id
  end
end
