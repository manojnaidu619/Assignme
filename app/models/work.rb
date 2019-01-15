class Work < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :category
end
