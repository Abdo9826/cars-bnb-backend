class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :date_reserved
      t.string :city
      t.references :user_id, null: false, foreign_key: true
      t.references :car_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
