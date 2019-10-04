class Submission < ApplicationRecord
  belongs_to :community
  has_many :comments, dependent: :destroy
  has_many :root_comments, ->{ where parent_id: nil}, class_name: 'Comment'
  validates :title, length: { minimum: 5 }
  validates :url, url: true
end
