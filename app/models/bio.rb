class Bio < ApplicationRecord
  enum occupation: [:self_employed, :student, :freelancer, :other]
  enum gender: [:male, :female, :unspecified]
  belongs_to :user
end
