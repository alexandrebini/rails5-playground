class Article < ApplicationRecord
  has_one_attached :image

  with_options if: :published? do
    validate :image_presence
    validates :title, presence: true
    validates :content, presence: true
  end

  private

  def image_presence
    errors.add(:image, "Image can't be blank") unless image.attached?
  end
end
