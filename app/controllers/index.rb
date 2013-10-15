
# http://balanced-hangman.herokuapp.com


get '/' do
  # data = RestClient.get 'http://balanced-hangman.herokuapp.com'
  # p JSON.parse(data)["prisoners"]

  # prisoner_data = RestClient.get 'http://balanced-hangman.herokuapp.com/users/tkPJbXfMsqnJl6iFPSApa73NS9W9iXL1oHjkeOGF4Dk='
  # p JSON.parse(prisoner_data)
  erb :index

  

end

post '/signup' do 
  RestClient.post 'http://balanced-hangman.herokuapp.com/me', :email_address => params[:email_address], :password => params[:password] 
end

get '/login' do
end

post '/login' do 
  RestClient.post 'http://balanced-hangman.herokuapp.com/users/tkPJbXfMsqnJl6iFPSApa73NS9W9iXL1oHjkeOGF4Dk=', :email_address => params[:email_address], :password => params[:password] 
end



