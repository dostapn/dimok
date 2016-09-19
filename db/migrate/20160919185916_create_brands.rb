class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :mnemonic
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
