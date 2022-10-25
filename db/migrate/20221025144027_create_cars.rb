class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.string :year
      t.datetime :year_realeased
      t.integer :user_id

      t.timestamps
    end
  end
end
