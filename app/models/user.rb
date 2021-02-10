class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :group_users
  has_many :groups, through: :group_users

  with_options presence: true do
    validates :name 
    validates :email
    with_options format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/, message: '英数混合で6文字以上のパスワードを入力してください' } do
      validates :password
      validates :password_confirmation
    end
  end
end
