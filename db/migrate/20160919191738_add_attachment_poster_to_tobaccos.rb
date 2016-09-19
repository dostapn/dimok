class AddAttachmentPosterToTobaccos < ActiveRecord::Migration
  def self.up
    change_table :tobaccos do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :tobaccos, :poster
  end
end
