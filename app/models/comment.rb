class Comment < ApplicationRecord
  belongs_to :parent, class_name: 'Comment', optional: true
  belongs_to :submission
end
