class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :hotels, :workshops, :restaurants

  def name
      object.first_name + ' ' + object.last_name
  end

   def hotels
    reservations = object.reservations.where("reservable_type = 'Hotel'")
    @hotels = Array.new
    reservations.each.with_index do |resa, index|
    @hotels += [
      :name => resa.reservable.name,
      :date_from => resa.date_from,
      :date_to => resa.date_to,
      :address => resa.reservable.address,
      :postal_code => resa.reservable.postal_code,
      :city => resa.reservable.city
    ]
    end
    @hotels
   end

   def workshops
    reservations = object.reservations.where("reservable_type = 'Workshop'")
    @workshops = Array.new
    reservations.each.with_index do |resa, index|
      @workshops += [
        :name => resa.reservable.name,
        :date => resa.date_from
      ]
    end
    @workshops
   end

   def restaurants
    reservations = object.reservations.where("reservable_type = 'Restaurant'")
    @restaurants = Array.new
    reservations.each.with_index do |resa, index|
    @restaurants += [
      :name => resa.reservable.name,
      :date_from => resa.date_from,
      :date_to => resa.date_to,
      :address => resa.reservable.address,
      :postal_code => resa.reservable.postal_code,
      :city => resa.reservable.city
    ]
    end
    @restaurants
   end

end
