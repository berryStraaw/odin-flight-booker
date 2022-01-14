class Flight < ApplicationRecord
    #has_one :airport, class_name: "Airport", inverse_of: :departure_airport
    #has_one :airport, class_name: "Airport" , inverse_of: :arrival_airport 
    has_many :bookings
    belongs_to :origin, class_name: :Airport
    belongs_to :destination, class_name: :Airport
end
