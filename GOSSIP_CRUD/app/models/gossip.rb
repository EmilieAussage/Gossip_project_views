class Gossip < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  belongs_to :user
  has_many :JoinTableTagGossips, dependent: :delete_all
  has_many :tags, through: :JoinTableTagGossips, dependent: :delete_all
end
