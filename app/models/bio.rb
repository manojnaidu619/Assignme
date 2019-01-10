class Bio < ApplicationRecord
  enum occupation: [:self_employed, :student, :freelancer, :other]
  belongs_to :user
end
