class Public::TopController < ApplicationController
  def top
  	@reports = Report.all.order(created_at: :desc)
  	@forecasts = Forecast.all.order(created_at: :desc)
  	if city_name = params[:city_name]
  		params = URI.encode_www_form({q: city_name})
	  	uri = URI.parse("http://api.openweathermap.org/data/2.5/forecast?#{params}&units=metric&lang=ja&appid=d731bd5a1e17c0c772485f00cbf92579")
	  	response = Net::HTTP.get_response(uri)
	  	result = JSON.parse(response.body)
	  	for num in 0..30 do
	  		dt = result["list"][num]["dt"]
	  		if dt == Time.parse(Date.tomorrow.to_s).to_i + 21600
	  			@description = result["list"][num]["weather"][0]["description"]
	  			@wind = result["list"][num]["wind"]["speed"]
	  			@wind_deg = result["list"][num]["wind"]["deg"]
	  			@temp = result["list"][num]["main"]["temp"]
	  		elsif dt == Time.parse(Date.tomorrow.to_s).to_i + 21600*2
	  			@description2 = result["list"][num]["weather"][0]["description"]
	  			@wind2 = result["list"][num]["wind"]["speed"]
	  			@wind_deg2 = result["list"][num]["wind"]["deg"]
	  			@temp2 = result["list"][num]["main"]["temp"]
	  		elsif dt == Time.parse(Date.tomorrow.to_s).to_i + 21600*3
	  			@description3 = result["list"][num]["weather"][0]["description"]
	  			@wind3 = result["list"][num]["wind"]["speed"]
	  			@wind_deg3 = result["list"][num]["wind"]["deg"]
	  			@temp3 = result["list"][num]["main"]["temp"]
	  		end
  		end
  		@city = result["city"]["name"]
  	end
  	@shops = Shop.order("RANDOM()").limit(4)
  end
end
