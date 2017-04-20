require 'sinatra'
require 'erb'

# This gives you the homepage of your app.
get '/' do
  erb :home
end

# This handles the data from your Dosage Form.
post '/' do
  age = params[:age]           # eg: months, years
  @number = params[:number].to_i   # eg: 5

  # Start coding here, friends!

  if @number >= 3 && @number < 6 && age == "months"
    @result = "60 mg"

  elsif @number > 6 && @number <= 24 && age == "months"
    @result = "120 mg"

  elsif @number >= 2 && @number < 4 && age == "years"
    @result = "180 mg"

  elsif @number >= 4 && @number < 6 && age == "years"
    @result = "240 mg"

  elsif @number >= 6 && @number < 8 && age == "years"
    @result = "240 or 250 mg"

  elsif @number >= 8 && @number < 10 && age == "years"
    @result = "360 or 375 mg"

  elsif @number >= 10 && @number < 12 && age == "years"
    @result = "480 or 500 mg"

  elsif @number >= 12 && @number < 16 && age == "years"
    @result = "480 or 750 mg"
    
  end

  erb :home
end
