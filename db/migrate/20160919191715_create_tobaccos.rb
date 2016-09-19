class CreateTobaccos < ActiveRecord::Migration[5.0]
  def change
    create_table :tobaccos do |t|
      t.string :name
      t.string :mnemonic
      t.integer :weight
      t.integer :smokiness
      t.integer :stregth
      t.integer :heat_resistance
      t.string :basis
      t.float :price
      t.references :category, foreign_key: true
      t.references :brand, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
