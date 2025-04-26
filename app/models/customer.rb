class Customer < ApplicationRecord
  belongs_to :user
  has_many :notes, dependent: :destroy
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { scope: :user_id }
  
  # Statusy klientów
  enum status: {
    lead: 'lead',
    active: 'active',
    inactive: 'inactive',
    potential: 'potential'
  }
  
  # Scope do wyszukiwania
  scope :search, ->(term) {
    where("name ILIKE ? OR email ILIKE ? OR company ILIKE ?", 
          "%#{term}%", "%#{term}%", "%#{term}%") if term.present?
  }
  
  # Scope do filtrowania po statusie
  scope :filter_by_status, ->(status) {
    where(status: status) if status.present?
  }
end
