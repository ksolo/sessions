helpers do
  def cart
    @cart ||= Cart.find_by(id: session[:cart_id])
  end
end