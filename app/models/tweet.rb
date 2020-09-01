class Tweet < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :text, presence: true
  validates :title, presence: true
  validates :author, presence: true

  belongs_to :user
  has_many :comments
end
