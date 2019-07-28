class Aquaria < ApplicationRecord
  # 一対多を表現
  belongs_to :user
  
  # 水族館名のバリデーション
  validates :facility, presence: true, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
  # おすすめ度のバリデーション
  validates :value, presence: true
  # 口コミ内容のバリデーション
  validates :content, presence: true, length: { maximum: 200 }
  # 口コミ画像のバリデーション
  mount_uploader :image, ImagesUploader
  
  # 施設名から経度・緯度を取得
  geocoded_by :facility
  after_validation :geocode

end
