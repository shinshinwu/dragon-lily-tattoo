get "/" do
  erb :index
end

get "/location" do
  erb :location
end

get "/faq" do
  erb :faq
end

get "/galleries" do
  erb :galleries
end

get "/galleries/lily" do
  erb :lily
end

get "/galleries/doug" do
  erb :doug
end

get "/galleries/christina" do
  erb :christina
end

get "/galleries/rob" do
  erb :rob, :layout => false
end

get "/contact" do
  erb :contact
end

post "/contact" do
  new_message = Message.create(params[:message])
  if request.xhr?
    erb :_message, locals: {message: new_message}
  else
    # implement error message
    redirect '/contact'
  end
end

get "/appointment" do
  erb :appointment
end

post "/appointment" do
  @new_customer = Customer.create(first_name: params[:customer][:first_name], last_name: params[:customer][:last_name], phone: params[:customer][:phone], email: params[:customer][:email])
  @new_appointment = Appointment.create(in_fl: params[:appointment][:value?], date: Chronic.parse("#{params[:appointment][:date]}"))
end

get "/blog" do
  erb :blog
end