class Spot < ApplicationRecord

	has_many :reports, dependent: :destroy
	has_many :forecasts, dependent: :destroy

	belongs_to :area

end
