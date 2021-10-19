class Prescription < ApplicationRecord
    belongs_to :user
    belongs_to :medication
    
    has_many :reminders
end
