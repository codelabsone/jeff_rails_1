class Favorite < ApplicationRecord
  belongs_to :stock
  belongs_to :user
end
