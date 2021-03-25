class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
  validates :encrypted_password, presence: true, length: {minimum: 6}
  # validates :password_confirmation,presence: true


  has_many :prototypes
  has_many :comments

end

