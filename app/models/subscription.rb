class Subscription < ApplicationRecord
  belongs_to :course
  belongs_to :member
end
