class AddColumnToBrand < ActiveRecord::Migration
  def change
    add_reference :brands, :country, index: true
    add_foreign_key :brands, :countries
  end
end
