class AddAttachmentPosterToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :categories, :poster
  end
end
