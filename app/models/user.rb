class User < ApplicationRecord
  has_many :user_goals
  has_many :goals, through: :user_goals
  belongs_to :team, optional: true

  # validates [:first_name, :last_name, :username], :presence => true
  # validates :username, :uniqueness => true
  # validates :first_name, presence: true
  validates :username, uniqueness: true, presence: true

  has_secure_password
end
