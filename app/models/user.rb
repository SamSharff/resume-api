class User < ApplicationRecord
  has_many :experiences
  has_many :trainings
end
