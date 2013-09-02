# GET ===============================================================

get '/products' do
  @products = Product.all
  erb :'products/index'
end

get '/products/:id' do
  @product = Product.find(params[:id])
  erb :'products/show'
end