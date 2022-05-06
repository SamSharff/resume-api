class Experience < ApplicationRecord
  belongs_to :user
  # how to validate "if the category says "skill", then "description" must be present"
end
