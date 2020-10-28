class User < ApplicationRecord
  belongs_to :city
  
  has_many :LierPrivateMessageUsers, dependent: :delete_all
  has_many :received_messages, through: :LierPrivateMessageUsers, source: :private_message, dependent: :delete_all
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage", dependent: :delete_all
  

end