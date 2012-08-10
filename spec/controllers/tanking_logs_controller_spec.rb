require 'spec_helper'

describe TankingLogsController do
	describe "GET 'new'" do
		it "create a new tankin log for the user car" do
			user =  Factory.create(:user)
			car =  Factory.create(:car)
      		visit new_user_car_tanking_log_path(:user_id => user.id,:car_id=>car.id)
      		response.should be_success
    	end
    end
end
