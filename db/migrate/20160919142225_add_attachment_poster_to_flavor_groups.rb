class AddAttachmentPosterToFlavorGroups < ActiveRecord::Migration
  def self.up
    change_table :flavor_groups do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :flavor_groups, :poster
  end
end
