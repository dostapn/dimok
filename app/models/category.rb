class Category < ApplicationRecord
  has_attached_file :poster,
                    styles:       {thumb: ['32x32#', :png], small: '100x100#', medium: '400x400#'},
                    default_url:  "/images/:style_missing.png",
                    url:          :default_url_by_mnemonic
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/

  private

  def default_url_by_mnemonic
    "/system/categories/#{mnemonic}/:style.:extension"
  end
end
