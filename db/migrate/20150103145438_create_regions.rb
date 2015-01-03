class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name, null: false
      t.references :country, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :regions, :countries
  end
end
