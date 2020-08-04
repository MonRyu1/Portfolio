class Local < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :forecasts, dependent: :destroy
  has_many :reports, dependent: :destroy

  belongs_to :shop

end
