class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_one_attached :image
  validates :category, :presence => true

  validate :correct_document_mime_type

  def correct_document_mime_type
    if image.attached? && !image.content_type.in?(%w(image/jpg image/jpeg image/gif image/png))
      errors.add(:image, 'Must be an image file (jpg, jpeg, gif or png)')
    end
  end
end
