class Spot < ApplicationRecord

	has_many :reports, dependent: :destroy
	has_many :forecasts, dependent: :destroy

	belongs_to :area

	attachment :spot_image

	enum feature: { ビーチブレイク: 0, リーフブレイク: 1, ミックス: 2}
	enum parking: { 無し: 0, あり（有料）: 1, あり（無料）: 2}

end
