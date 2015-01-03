class AddColumnProducerToBrand < ActiveRecord::Migration
  def change
    add_reference :brands, :producer, index: true
    add_foreign_key :brands, :producers
  end
end
