class Bio < ApplicationRecord
  enum occupation: [:employed, :student, :freelancer, :other]
  enum gender: [:male, :female, :unspecified]
  belongs_to :user
  #validates_presence_of :fullname,:username, :locality, :occupation, :contact_number, :college_school_name, :dob, :gender
end
