class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :prescription_id
end
