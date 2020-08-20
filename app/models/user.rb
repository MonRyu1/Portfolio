class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reports, dependent: :destroy

  attachment :user_image

 	enum level: { ビギナー: 0, 初級: 1, 中級: 2, 上級: 3, セミプロ: 4, プロ: 5}

 	def active_for_authentication?
    super && (self.is_active == true)
  end

end
