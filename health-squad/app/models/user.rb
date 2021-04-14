class User < ApplicationRecord
    has_secure_password

    has_many :prescriptions
    has_many :medications, through: :prescriptions

    validates :username, uniqueness: { case_sensitive: false }
end
