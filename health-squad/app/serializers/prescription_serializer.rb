class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :medication_id, :reminder
end
