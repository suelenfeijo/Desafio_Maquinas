class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # se errar senha algumas vezes bloqueia :lockable, :timeoutable, and autenticação usando face, etc :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable, 
         :validatable,
         :confirmable,
         :trackable
end
