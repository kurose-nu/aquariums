class User < ApplicationRecord
    # レコードを保存前に小文字に変換する
    before_save { self.email.downcase! }
    # 名前のバリデーション
    validates :name, presence: true, length: { maximum: 50 }
    # メールのバリデーション
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
    # パスワード付きのログインを良しなにやってくれる
    has_secure_password
    
    # 一対多を表現
    has_many :aquarias
end
