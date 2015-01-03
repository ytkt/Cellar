class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.references :country, index: true

      t.timestamps null: false
    end
    add_foreign_key :regions, :countries
  end
end
