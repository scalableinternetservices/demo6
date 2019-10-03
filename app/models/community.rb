class Community < ApplicationRecord
  has_many :submissions, dependent: :destroy
end
