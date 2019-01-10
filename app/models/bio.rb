class Bio < ApplicationRecord
  enum occupation: [:employed, :student, :freelancer, :other]
  enum gender: [:male, :female, :unspecified]
  belongs_to :user
end
