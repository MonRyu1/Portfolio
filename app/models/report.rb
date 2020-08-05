class Report < ApplicationRecord

	belongs_to :user
	belongs_to :local
	belongs_to :spot

	attachment :report_image

end
