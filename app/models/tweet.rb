class Tweet < ApplicationRecord
  validates :tweet, presence: true
  belongs_to :user
  has_many :tweet_tags, dependent: :destroy
  has_many :tags, through: :tweet_tags
end
