class Category < ApplicationRecord
  has_many :posts, :dependent => :delete_all
  belongs_to :user

  validates :name, :presence => true
end
