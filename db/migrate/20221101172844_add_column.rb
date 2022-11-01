class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :specifications, :string
  end
end
