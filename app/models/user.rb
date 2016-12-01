class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  acts_as_paranoid

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end
