class Section < ApplicationRecord
  belongs_to :course
  
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true
  validates :number, presence: true
  validates :course, presence: true
end
