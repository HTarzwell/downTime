class DowntimeInstanceSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :activity
  has_one :user
end
