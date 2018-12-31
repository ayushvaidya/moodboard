class Category < ApplicationRecord
  has_many :posts
  belongs_to :user

  validates :name, :presence => true
end
