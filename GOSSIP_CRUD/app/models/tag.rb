class Tag < ApplicationRecord
  has_many :JoinTableTagGossips, dependent: :delete_all
  has_many :gossips, through: :JoinTableTagGossips, dependent: :delete_all
end
