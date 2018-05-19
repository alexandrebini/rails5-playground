class Article < ApplicationRecord
  with_options if: :published? do
    validates :title, presence: true
    validates :content, presence: true
  end
end
