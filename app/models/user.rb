class User < ApplicationRecord
  has_many :experiences
  has_many :trainings
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
