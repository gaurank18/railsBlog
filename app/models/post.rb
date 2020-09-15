class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes

  validates :user, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
