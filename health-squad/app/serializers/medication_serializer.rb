class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :dosage, :directions, :count
end
