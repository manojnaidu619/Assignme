class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :bio, dependent: :destroy
  has_many :works

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
