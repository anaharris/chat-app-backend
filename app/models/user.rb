class User < ApplicationRecord
  has_many :user_conversations
  has_many :conversations, through: :user_conversations
  has_many :messages
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}
  validates :username, :name, presence: true
  validates :password, presence: true, on: :create
end
