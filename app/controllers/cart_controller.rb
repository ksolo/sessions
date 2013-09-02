# GET ================================================

get '/cart' do
  erb :cart
end

# POST ===============================================

post '/cart/update' do
  unless cart
    session[:cart_id] = Cart.create.id
  end
  cart.products << Product.find(params[:product_id])
  redirect back
end

post '/cart/checkout' do
  cart.update_attributes(checked_out_at: Time.now)
  session.delete(:cart_id)
  redirect to("/")
end