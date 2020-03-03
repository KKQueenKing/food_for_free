class Review < ApplicationRecord
  belongs_to :claim

  validates :content, presence: true
  validates :star, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
