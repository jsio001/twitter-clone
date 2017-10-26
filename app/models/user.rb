class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :rememberable, :trackable
  devise :database_authenticatable, :registerable, :recoverable, :validatable
  has_many :tweets, dependent: :destroy
end
