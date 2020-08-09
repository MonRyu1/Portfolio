class AboutController < ApplicationController

  def about
  	if city_name = params[:city_name]
	  	params = URI.encode_www_form({q: city_name})
	  	uri = URI.parse("http://api.openweathermap.org/data/2.5/weather?#{params}&units=metric&appid=d731bd5a1e17c0c772485f00cbf92579")
	  	response = Net::HTTP.get_response(uri)
	  	result = JSON.parse(response.body)
	  	if result["main"]
	  		@temp_max = result["main"]["temp_max"]
	  		@temp_min = result["main"]["temp_min"]
	  		@wind = result["wind"]["speed"]
	  		@wind_deg = result["wind"]["deg"]
	  		@sunrise = result["sys"]["sunrise"]
	  		@sunset = result["sys"]["sunset"]
	  	end
  	end
  end

end
