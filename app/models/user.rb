class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  has_many :reservations, dependent: :destroy
  # whats dependent: :destroy?
  # it means that if the user is deleted, the cars will be deleted as well

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
