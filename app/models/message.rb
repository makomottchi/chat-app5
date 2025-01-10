class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image #各レコードとファイルを1対1の関係で紐づけるメソッド

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
