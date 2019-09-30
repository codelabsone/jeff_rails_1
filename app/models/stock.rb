class Stock < ApplicationRecord

  validates :make, :model, :color, :year,:saleprice, presence: true
  validates :dealerprice, :saleprice, :profit, numericality: {greater_than_or_equal_to: 0}
  validates :url, allow_blank: true, format: {
  with:    /\w+\.(gif|jpg|png|jpeg)\z/i,
  message: "must reference a GIF, JPG, or PNG image"
  }
end
