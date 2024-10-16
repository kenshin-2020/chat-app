class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image  #messagesテーブルに画像ファイルを紐付け

  validates :content, presence: true
end
