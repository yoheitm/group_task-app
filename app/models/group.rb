class Group < ApplicationRecord
  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users
  has_many :messages, dependent: :destroy
  has_many  :meetings, dependent: :destroy

  validates :name, presence: true
  validates :user_ids, presence: true
end
