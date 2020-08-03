class Shop < ApplicationRecord

	belongs_to :area

	has_many :users, dependent: :destroy

end
