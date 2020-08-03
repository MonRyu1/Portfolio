class Area < ApplicationRecord

	has_many :spots, dependent: :destroy
	has_many :shops, dependent: :destroy
end
