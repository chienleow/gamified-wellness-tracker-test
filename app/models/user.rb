class User < ApplicationRecord
  has_many :user_goals
  has_many :goals, through: :user_goals
  belongs_to :team

  validates [:first_name, :last_name, :username], :presence => true
  validates :username, :uniqueness => true

  has_secure_password
end
