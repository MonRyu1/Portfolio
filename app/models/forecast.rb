class Forecast < ApplicationRecord

	belongs_to :spot
	belongs_to :local

	enum size: { フラット: 0, スネ: 1, ヒザ: 2, モモ: 3, コシ: 4, ムネ: 5, アタマ: 6, オーバーヘッド: 7, ダブル: 8, トリプル: 9, クローズ: 10}

end
