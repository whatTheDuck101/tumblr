class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 50 }
  validates :body, presence: true
end
