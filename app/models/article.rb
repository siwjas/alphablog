class Article < ApplicationRecord
  validates_presence_of :title, :description
  validates :title, length: { in: 6..128 }
  validates :description, length: { in: 10..256 }
end