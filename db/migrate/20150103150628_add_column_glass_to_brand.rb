class AddColumnGlassToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :glass, :integer
  end
end
