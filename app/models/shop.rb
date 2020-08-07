class Shop < ApplicationRecord

	belongs_to :area

	has_many :locals, dependent: :destroy

	attachment :shop_image

end
