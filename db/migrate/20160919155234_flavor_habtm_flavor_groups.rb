class FlavorHabtmFlavorGroups < ActiveRecord::Migration[5.0]
  def change
    create_join_table :flavors, :flavor_groups
  end
end
