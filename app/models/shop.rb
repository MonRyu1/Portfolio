class Shop < ApplicationRecord

	belongs_to :area

	has_many :locals, dependent: :destroy

end
