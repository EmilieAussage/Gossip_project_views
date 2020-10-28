class PrivateMessage < ApplicationRecord
  has_many :LierPrivateMessageUsers, dependent: :delete_all
  has_many :receivers,through: :LierPrivateMessageUsers,source: :user, dependent: :delete_all
  belongs_to :sender, class_name: "User"
  

end
