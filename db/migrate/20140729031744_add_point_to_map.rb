class AddPointToMap < ActiveRecord::Migration
  def change
    add_column :maps, :first_point, :string
    add_column :maps, :last_point, :string
  end
end