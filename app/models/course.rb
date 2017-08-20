class Course < ApplicationRecord
  belongs_to :instructor
  has_many :sections
  has_many :subscriptions
  
  validates :title, presence: true, length: {maximum: 75}
  validates :abstract, presence: true, length: {maximum: 600}
  validates :price, presence: true
  
  has_attached_file :thumbnail, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
end
