class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #   before_action :authenticate_user!
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  validates :name, presence: true
  has_many :foods, dependent: :destroy
  has_many :recipe, dependent: :destroy

  def admin?(admin)
    :role == 'admin'
  end

  def authenticate(password)
    valid_password?(password)
  end
end
