FactoryGirl.define do

  Factory.define :user do |f| 
    f.password "foobar"
    f.password_confirmation { |u| u.password }
    f.email "foo@example.com"
    f.id "1"
  end

  Factory.define :car do |f|
    f.brand "example"
    f.color "red"
    f.model "ZXC"
    f.year "2012"
    f.user_id "1"
  end
  Factory.define :tanking_log do |f|
    f.cost "20000"
    f.gallon "1"
    f.km "10000"
    f.date "2012-08-08"
    f.car_id "1"
    f.gas_station_id "1"
  end
end