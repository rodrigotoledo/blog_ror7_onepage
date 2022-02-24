class Article < ApplicationRecord
  validates :title, :content, presence: true
  after_create_commit -> {
    broadcast_prepend_to "articles"
  }
end
