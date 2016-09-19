class AddAttachmentPosterToBrands < ActiveRecord::Migration
  def self.up
    change_table :brands do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :brands, :poster
  end
end
