class Comment < ApplicationRecord
  default scope :status, -> { where(:status => false)}
  validates :body, presence: true
  belongs_to :filme
end
