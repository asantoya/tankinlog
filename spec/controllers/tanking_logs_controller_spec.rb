require 'spec_helper'

describe TankingLogsController do
	describe "GET 'new'" do
		it "create a new tankin log for the user car" do
			user = User.create!(:email => "user@example.com", :password => "foobar", :password_confirmation => "foobar" )
			car = Car.create!(:brand => "example", :color => "foobar", :model => "foobar", :year =>"2012")
      		visit new_user_car_path(:user_id => user.id,:car_id=>car.id)
      		response.should be_success
    	end
    end
end
