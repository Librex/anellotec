class Course < ApplicationRecord
  belongs_to :instructor
  
  validates :title, presence: true, length: {maximum: 75}
  validates :abstract, presence: true, length: {maximum: 600}
end
