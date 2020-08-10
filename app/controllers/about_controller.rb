class AboutController < ApplicationController

  def about
	 	if city_name = params[:city_name]
	  	params = URI.encode_www_form({q: city_name})
	  	uri = URI.parse("http://api.openweathermap.org/data/2.5/forecast?#{params}&units=metric&lang=ja&appid=d731bd5a1e17c0c772485f00cbf92579")
	  	response = Net::HTTP.get_response(uri)
	  	result = JSON.parse(response.body)
	  	for num in 0..30 do
	  		dt = result["list"][num]["dt"]
	  		if dt == Time.parse(Date.tomorrow.to_s).to_i + 21600
	  			@temp = result["list"][num]["main"]["temp"]
	  			@dt_txt = result["list"][num]["dt_txt"]
	  		elsif dt == Time.parse(Date.tomorrow.to_s).to_i + 21600*2
	  			@temp2 = result["list"][num]["main"]["temp"]
	  			@dt_txt2 = result["list"][num]["dt_txt"]
	  		elsif dt == Time.parse(Date.tomorrow.to_s).to_i + 21600*3
	  			@temp3 = result["list"][num]["main"]["temp"]
	  			@dt_txt3 = result["list"][num]["dt_txt"]
	   		end
  		end
  	end
 	end

end