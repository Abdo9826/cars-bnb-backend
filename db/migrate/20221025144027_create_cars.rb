class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.datetime :year_released

      t.timestamps
    end
  end
end
