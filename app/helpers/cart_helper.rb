def cart
  @cart ||= Cart.find_by_id(session[:cart_id])
end