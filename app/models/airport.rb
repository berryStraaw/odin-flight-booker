class Airport < ApplicationRecord
    has_many :departing_flights, class_name: :Flight, foreign_key: :origin_id, inverse_of: :origin
    has_many :arriving_flights, class_name: :Flight, foreign_key: :destination_id, inverse_of: :destination
    #belongs_to :departure_airport, class_name: 'Flight', foreign_key: 'departure_airport'
    #belongs_to :arrival_airport, class_name: 'Flight', foreign_key: 'arrival_airport'
end
