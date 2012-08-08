class CarsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @car = @user.cars.build
  end

    def create
      @user = User.find(params[:user_id])
      
      @car = @user.cars.build(params[:car])
      if @car.save
        redirect_to user_car_path(@user, @car), :flash => { :notice => "  car created!" }
      else
        redirect_to new_user_car_path ,:flash => { :alert => " sorry try again :(" }
      end
    end
    
    def show
      @user = User.find(params[:user_id])     
      @car = @user.cars.find(params[:id])   
    end
    def index
      @user = User.find(params[:user_id])     
      @car = @user.cars.all
    end
    def edit
      @user = User.find(params[:user_id])     
      @car = @user.cars.find(params[:id])  
    end
    def update
      @user = User.find(params[:user_id])  
      @car = @user.cars.find(params[:id])
      if @car.update_attributes(params[:car])
        redirect_to user_cars_path, :flash => { :notice => "  Car Updated!" }
      else
        render 'edit'
      end
    end
    def destroy
      @user = User.find(params[:user_id])  
      @car = @user.cars.find(params[:id])
      @car.destroy
      redirect_to user_cars_path, :flash => { :notice => "  Car successfully deleted" }
    end
end