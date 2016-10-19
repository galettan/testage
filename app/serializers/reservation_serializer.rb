class ReservationSerializer < ActiveModel::Serializer
  attributes :date_from, :date_to

  has_one :reservable, serializer:  ReservableSerializer, polymorphic: true
end
