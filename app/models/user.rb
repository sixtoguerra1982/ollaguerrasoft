class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [ :normal, :admin ]
  has_one :evento
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
