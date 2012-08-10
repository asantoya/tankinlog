require 'spec_helper'

describe TankingLogsController do
	describe "GET 'new'" do
		it "create a new tankin log for the user car" do
			user =  Factory.create(:user, :name => "frank", :password => "secret")
			car =  Factory.create(:car, :brand => "frank", :color => "white", :model=>"aveo",:year=>"2011")
      		visit new_user_car_tanking_log_path(:user_id => user.id,:car_id=>car.id)
      		response.should be_success
    	end
    end
end
