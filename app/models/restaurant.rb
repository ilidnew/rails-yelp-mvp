class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian", "mexican", "thai", "spanish"]
  has_many :reviews, dependent: :destroy

  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

end
