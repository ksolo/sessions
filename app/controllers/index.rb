get '/' do
  @products = Product.all
  erb :'products/index'
end
