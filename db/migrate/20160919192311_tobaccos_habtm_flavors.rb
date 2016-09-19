class TobaccosHabtmFlavors < ActiveRecord::Migration[5.0]
  def change
    create_join_table :tobaccos, :flavors
  end
end
