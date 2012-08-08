class GasStationsController < ApplicationController
	def new
		@gas = GasStation.new
		@title = "new gas station"
  	end
  	def create
  		@gas = GasStation.new(params[:gas_station])
		if @gas.save
   			redirect_to new_gas_station_path, :flash=>{:notice=>"Gas Station created success, push BACK to continue"}
		else
			@title = "Sign up"
 			redirect_to new_gas_station_path, :flash=>{:notice=>"sorry try again"}
		end
	end
end
