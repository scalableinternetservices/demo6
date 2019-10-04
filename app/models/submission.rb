class Submission < ApplicationRecord
  belongs_to :community
  has_many :comments, dependent: :destroy
  validates :title, length: { minimum: 5 }
  validates :url, url: true
end
