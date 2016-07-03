#final project for Skillcrush 104 Ruby Class
#the purpose is to get the forecast for a location selected by the user


require 'barometer'

def get_weather(where)
    barometer = Barometer.new(where)
    weather = barometer.measure
    
    #today variabloe below used in forecasts loop in if statement
    
    today = Time.now.strftime("%d").to_i
    tomorrow = today+1
    
#print today's weather
    puts "Today's weather is  with a high of" + weather.today.high.f.to_s + " and a low of " + weather.today.low.f
    
    #print rest of forecast
    weather.forecast.each do |forecast|
        day = forecast.starts_at.dat
        if day == today
            day_name = "Today"
        else
            day_name = forecast.starts_at.strftime('%A')
            puts day_name + "I will be" + forecast.icon + "with low of " + forecasts.low.fto_s + "and a high of " + forecast.high.f.to_s 
        end #end for if statement
        
    end # end for loop
    
 #get location from user
    puts "What zip code do you need the temperature for?"
    where = gets.chomp
    get_weather(where)
    
    

    
