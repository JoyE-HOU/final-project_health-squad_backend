class Medication < ApplicationRecord
    has_many :prescriptions
    has_many :users, through: :prescriptions
end
