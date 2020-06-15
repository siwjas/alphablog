class Article < ApplicationRecord
  belongs_to :user
  scope :most_recent, -> {order("created_at DESC")}
  validates_presence_of :title, :description
  validates :title, length: { in: 6..128 }
  validates :description, length: { in: 10..1000 }
end