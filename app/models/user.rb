class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :rememberable, :trackable
  devise :database_authenticatable, :registerable, :recoverable, :validatable

  has_one :profile, dependent: :destroy

  has_many :tweets, dependent: :destroy

  has_many :subscriber_users, class_name: "Relation", foreign_key: :poster_id, dependent: :destroy
  has_many :subscribers, through: :subscriber_users

  has_many :poster_users, class_name: "Relation", foreign_key: :subscriber_id
  has_many :posters, through: :poster_users

end
