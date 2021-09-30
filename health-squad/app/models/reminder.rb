class Reminder < ApplicationRecord
  belongs_to :prescription
  belongs_to :user
end
