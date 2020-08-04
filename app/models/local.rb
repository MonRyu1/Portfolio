class Local < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :forecasts, dependent: :destroy
  has_many :reports, dependent: :destroy

  belongs_to :shop

  enum level: { ビギナー: 0, 初級: 1, 中級: 2, 上級: 3, セミプロ: 4, プロ: 5}

end
