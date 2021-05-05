class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :medication_id, :reminder

  belongs_to :user
  belongs_to :medication
end
