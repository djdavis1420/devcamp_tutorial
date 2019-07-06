class Blog < ApplicationRecord
  enum status: { Draft: 0, Published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :topic_id
  belongs_to :topic, optional: true
  has_many :comments, dependent: :destroy

  def self.recent
    order("created_at DESC")
  end
end
