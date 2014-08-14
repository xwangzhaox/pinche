class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :expense
      t.string :starting_point
      t.string :end_point
      t.text :description

      t.timestamps
    end
  end
end
