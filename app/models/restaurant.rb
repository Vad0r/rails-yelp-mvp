class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CAT = ["chinese", "italian", "japanese", "french", "belgian"].freeze
  validates :category, inclusion: { in: CAT }

  validates :category, presence: true
  validates :name, presence: true
  validates :address, presence: true

end
