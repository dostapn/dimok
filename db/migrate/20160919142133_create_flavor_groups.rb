class CreateFlavorGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :flavor_groups do |t|
      t.string :name
      t.string :mnemonic

      t.timestamps
    end
  end
end
