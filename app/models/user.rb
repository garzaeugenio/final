class User < ActiveRecord::Base
  has_many :projects
  has_secure_password
  
  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :city, presence: true
  validates :state, presence: true
  
end
