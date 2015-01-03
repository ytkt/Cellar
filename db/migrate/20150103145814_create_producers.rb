class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name, null: false, unique: true

      t.timestamps null: false
    end
  end
end
