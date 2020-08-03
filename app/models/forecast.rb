class Forecast < ApplicationRecord

	belongs_to :spots
	belongs_to :users

end
