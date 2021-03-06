class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user, optional: true
  belongs_to :bot, optional: true
  validates :content, presence: true
  default_scope { order(created_at: :desc) }
end
