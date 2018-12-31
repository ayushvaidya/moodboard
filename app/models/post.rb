class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_one_attached :image
  validates :image, :presence => true
  validates :category, :presence => true

  def correct_document_mime_type
    if avatar.attached? && !avatar.content_type.in?(%w(image/jpg image/jpeg image/gif image/png))
      errors.add(:image, 'Must be an image file (jpg, jpeg, gif or png)')
    end
  end
end
