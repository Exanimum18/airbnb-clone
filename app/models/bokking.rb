class Bokking < ApplicationRecord
  belongs_to :user
  belongs_to :plan
end
