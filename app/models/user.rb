class User < ApplicationRecord
  devise :database_authenticatable, :timeoutable, :registerable, :recoverable, :rememberable, :validatable, :authentication_keys => [:email]

  enum role: { receptionist: "receptionist", doctor: "doctor" }
end
