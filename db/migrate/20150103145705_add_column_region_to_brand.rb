class AddColumnRegionToBrand < ActiveRecord::Migration
  def change
    add_reference :brands, :region, index: true
    add_foreign_key :brands, :regions
  end
end
