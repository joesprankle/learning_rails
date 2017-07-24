class CreateCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :costs do |t|
      t.string :volume
      t.decimal :price
      t.integer :sort
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
