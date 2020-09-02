class Tweet < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :text, presence: true
  validates :title, presence: true
  validates :author, presence: true

  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Tweet.where(['title LIKE(?) OR author LIKE(?) OR text LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Tweet.all
    end
  end
end
