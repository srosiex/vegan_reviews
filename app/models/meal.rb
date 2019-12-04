class Meal < ApplicationRecord
    belongs_to :restaurant
    has_many :reviews
    has_many :users, through: :reviews

    accepts_nested_attributes_for :restaurant

    validates :name, presence: true
    validates :description, presence: true

    scope :grouped_ratings, -> {left_joins(:reviews).group(:id).order('avg(stars) desc')}

    def self.alphabetical_order
        order(:name)
    end
end
