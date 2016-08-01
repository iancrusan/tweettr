class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: :true, length: { maximum: 240 }
  default_scope -> { order(created_at: :desc) }
end
