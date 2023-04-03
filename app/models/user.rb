class User < ApplicationRecord
    has_many :recipes
  enum :u_type, {user: 0, admin: 1}
  has_secure_password
  validates :email, { presence: true, uniqueness: true }
  validates :username, {presence: true, uniqueness: true, length: { minimum: 6 } }
end
