class Forecast < ApplicationRecord

	belongs_to :spot
	belongs_to :local

end
