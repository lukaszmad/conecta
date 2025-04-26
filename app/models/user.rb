class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :customers, dependent: :destroy
  has_many :notes, dependent: :destroy
  
  validates :email, presence: true, uniqueness: true
  
  # Dostępne języki
  def self.available_languages
    {
      'pl' => 'Polski',
      'en' => 'English',
      'pt' => 'Português',
      'es' => 'Español'
    }
  end
end