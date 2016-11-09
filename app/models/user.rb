class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :movies
  validates_presence_of :first_name, :last_name, :password, :email

  def is_admin?
    if self
      self.email == ENV["GMAIL_USERNAME"]
    end
  end
end
