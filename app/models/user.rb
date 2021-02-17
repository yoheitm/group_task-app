class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :messages

  with_options presence: true do
    validates :name, :email
  end
  with_options presence: true, on: :create, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/ } do
    validates :password
    validates :password_confirmation
  end
end
