class Filme < ApplicationRecord
    validates :title, :release_year, presence: true
    validates :release_year, numericality: {only_integer: true, greater_than: 0, or_equal_to:2022 } 

    has_and_belongs_to_many :actors
end
