class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  scope :most_recent, -> {order("created_at DESC")}
  validates_presence_of :title, :description
  validates :title, length: { in: 6..128 }
  validates :description, length: { in: 10..1000 }
end