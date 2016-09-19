class Tobacco < ApplicationRecord
  has_attached_file :poster,
                    styles: {thumb: ['32x32#', :png], small: '100x100#', medium: '400x400#'},
                    default_url: "/images/:style_missing.png",
                    url: :default_url_by_mnemonic
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/
  validates_uniqueness_of :mnemonic

  belongs_to :category
  belongs_to :brand
  has_and_belongs_to_many :flavors

  private

  def default_url_by_mnemonic
    "/system/tobacco/#{name.parameterize.underscore}/:style.:extension"
  end

end
