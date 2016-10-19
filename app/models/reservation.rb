class Reservation < ApplicationRecord
      belongs_to :reservable, polymorphic: true
end
