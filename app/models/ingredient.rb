class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence: true
end


  # validates :address, presence: true
  # # validates :phone_number, format: { with: /\A[a-zA-Z]+\z/ }
  # validates :category, inclusion: { in: Restaurant::CATEGORIES }
