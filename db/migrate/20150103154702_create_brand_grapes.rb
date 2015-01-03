class CreateBrandGrapes < ActiveRecord::Migration
  def change
    create_table :brand_grapes do |t|
      t.integer :percentage
      t.references :brand, index: true
      t.references :grape, index: true

      t.timestamps null: false
    end
    add_foreign_key :brand_grapes, :brands
    add_foreign_key :brand_grapes, :grapes
  end
end
