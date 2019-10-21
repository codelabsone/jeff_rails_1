class Stock < ApplicationRecord

  validates :make, :model, :color, :year,:saleprice, presence: true
  validates :dealerprice, :saleprice, :profit, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  validates :url, allow_blank: true, format: {
  with:    /\w+\.(gif|jpg|png|jpeg)\z/i,
  message: "must reference a GIF, JPG, or PNG image"
  }

  has_many :favorites, dependent: :destroy
  has_many :buyers, through: :favorites, source: :user
  has_many :reviews, dependent: :destroy
  has_many_attached :uploads

  def average_stars
    reviews.average(:stars)
  end

  def variant(file, options)
      variant = file.variant(options)
      main_app.rails_blob_representation_path(variant.blob.signed_id, variant.variation.key, variant.blob.filename)
    end

end
