class Product < ApplicationRecord
  validates :name, presence: true,
            length: { minimum: 5 }
  has_many :costs
  has_many :productPhotos
end
