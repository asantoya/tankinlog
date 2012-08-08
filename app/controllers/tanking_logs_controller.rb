class TankingLogsController < ApplicationController
 
  def new
    @user = User.find(params[:user_id])  
    @car = @user.cars.find(params[:car_id])
    @tankinglog = @car.tanking_logs.build
  end
    
  def create
    @user = User.find(params[:user_id])  
    @car = @user.cars.find(params[:car_id])
    @tankinglog = @car.tanking_logs.build(params[:tanking_log])
    if @tankinglog.save
      redirect_to user_car_tanking_logs_path(@user, @car), :flash => { :notice => "  new tanking created!" }
    else
      redirect_to new_user_car_tanking_log_path ,:flash => { :notice => " sorry try again :(" }
    end
  end
  def index
    @user = User.find(params[:user_id]) 
    @car = @user.cars.find(params[:car_id])    
    @tankinglog = @car.tanking_logs.all
  end
end
