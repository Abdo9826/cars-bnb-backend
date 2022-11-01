class AddImageToCar < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :featured_image, :string
  end
end
