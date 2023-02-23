class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_many :conversations, foreign_key: :sender_id

  has_many :conversation_messages, foreign_key: :sender_id
end
