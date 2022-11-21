class Actor < ApplicationRecord
    validates :name, :email, presence:true
    validates :birthyear, numericality: {only_integer: true, greater_than: 0, or_equal_to:2023 }
    has_and_belongs_to_many :filmes
end
