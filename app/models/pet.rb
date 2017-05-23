class Pet < ApplicationRecord
  CATEGORIES = ['cat', 'dog', 'turtle', 'horse']
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
