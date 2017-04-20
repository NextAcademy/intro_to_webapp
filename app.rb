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

  erb :home
end
