get '/secretcontactlist' do
  @contacts = Contact.order('first_name')
  erb :index
end

get '/' do
  @contact = Contact.new(params[:contact])
  erb :new
end

post '/contacts' do 
  puts params.inspect
  @contact = Contact.new(params[:contact])
  if @contact.save
  	aler
  	redirect to('/')
  else
  	erb :new
  end
end
