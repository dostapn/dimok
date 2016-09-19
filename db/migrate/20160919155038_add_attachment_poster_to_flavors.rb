class AddAttachmentPosterToFlavors < ActiveRecord::Migration
  def self.up
    change_table :flavors do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :flavors, :poster
  end
end
