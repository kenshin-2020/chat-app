class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image  #messagesテーブルに画像ファイルを紐付け

  validates :content, presence: true, unless: :was_attached?  #メソッドの返り値がfalseならバリデーションによる検証を行う

  def was_attached?
    self.image.attached?   #画像があればtrue、なければfalseを返す
  end
end
