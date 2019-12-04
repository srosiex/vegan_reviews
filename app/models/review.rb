class Review < ApplicationRecord
  belongs_to :user
  belongs_to :meal
  has_many :restaurants, through: :meals

  validates :title, presence: true
 
end
