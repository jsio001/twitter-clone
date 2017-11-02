class Tweet < ApplicationRecord

  has_many :tweet_tags, dependent: :destroy
  has_many :tags, through: :tweet_tags

  belongs_to :user

  validates :tweet, presence: true

end
