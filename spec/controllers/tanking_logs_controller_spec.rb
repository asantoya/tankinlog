require 'spec_helper'

describe TankingLogsController do
	describe "GET 'new'" do
		it "first visit the new tanking page" do
			user =  Factory.create(:user)
			car =  Factory.create(:car)
      			visit new_user_car_tanking_log_path(:user_id => user.id,:car_id=>car.id)
      			response.should be_success
    		end
    	end
<<<<<<< HEAD
    end
    describe "GET 'create'" do
    	it "create the new tanking"do
    	user =  Factory.create(:user)
    	car =  Factory.create(:car)
    	tanking=Factory.create(:tanking_log)
    	visit user_car_tanking_logs_path(:user_id => user.id,:car_id=>car.id)
    	response.should be_success
=======
    	describe "GET 'create'" do
    		it "create the new tanking"do
    			user =  Factory.create(:user)
    			car =  Factory.create(:car)
    			tanking=Factory.create(:tanking_log)
    			visit user_car_tanking_logs_path(:user_id => user.id,:car_id=>car.id)
    			response.should be_success
    		end
>>>>>>> 47343f6ee1a0d456b9a730a8695edd8d999a11d0
    	end
end
