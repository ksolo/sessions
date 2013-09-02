get '/' do
  @products = Product.all
  erb :'products/index'
end

get '/login' do
  erb :login
end

# POST ================================================

post '/login' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect to("/")
  else
    @errors = "Username and Password didn't match"
    erb :login
  end
end