class User < ApplicationRecord
  has_secure_password
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_cars, through: :favorites, source: :stock

  validates :name, presence: true
  validates :email, presence: true,
                    format: /\A\S+@\S+\z/,
                    uniqueness: { case_sensitive: false }
  validates :password,  length: { minimum: 8, allow_nil: true },
                                       confirmation: true

  validates :username, presence: true,
                     format: /\A[A-Z0-9]+\z/i,
                     uniqueness: { case_sensitive: false }

  def self.authenticate(email, password)
   user = User.find_by(email: email)
   user && user.authenticate(password)
  end

end
