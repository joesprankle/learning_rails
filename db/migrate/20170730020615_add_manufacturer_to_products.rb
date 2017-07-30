class AddManufacturerToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :manufacturer_id, :integer
  end
end
