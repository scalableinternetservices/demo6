class Comment < ApplicationRecord
  belongs_to :submission
  belongs_to :parent
end
