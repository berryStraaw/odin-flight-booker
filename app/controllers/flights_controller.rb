class FlightsController < ApplicationController

    def index
        @origin_options = Airport.all.map{ |u| [ u.city, u.id ] }
        @destination_options = Airport.all.map{ |u| [ u.city, u.id ] }
        @flight_dates=Flight.all.map{ |d| [d.start_time, d.start_time]}.uniq
        @flights=Flight.all

        unless params[:origin_id].nil?
            @flight_options=Flight.where(origin_id: params[:origin_id], destination_id: params[:destination_id], start_time: params[:start_time])
            #p(@flight_options)
            #@flight_options.select{|flight| }
        end
    end

end
