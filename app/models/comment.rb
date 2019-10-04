class Comment < ApplicationRecord
  belongs_to :parent, class_name: 'Comment', optional: true
  belongs_to :submission

  validates :message, length: { minimum: 1 }
  validates :parent, presence: { unless: -> { parent_id.blank? } }
end
