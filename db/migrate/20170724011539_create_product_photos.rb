class CreateProductPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :product_photos do |t|
      t.string :url
      t.text :title
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
