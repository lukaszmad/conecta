class Note < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  
  validates :content, presence: true
  
  default_scope { order(created_at: :desc) }
end