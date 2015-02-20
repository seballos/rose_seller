class Product < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "900x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  scope :highlighted, -> {where(offer:  true)}

  def to_builder
    Jbuilder.new do |product|
      product.description :description
      product.caption :caption
      product.image url_for(:image)
    end
  end
end
