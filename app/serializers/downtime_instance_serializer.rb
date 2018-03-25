class DowntimeInstanceSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :activity, :duration
  has_one :user
end
