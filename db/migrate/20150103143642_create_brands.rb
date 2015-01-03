class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :vintage
      t.integer :asin
      t.integer :jan_code
      t.integer :temperature_low
      t.integer :temperature_high
      t.integer :serving_temperature

      t.timestamps null: false
    end
  end
end
