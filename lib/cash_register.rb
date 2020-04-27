class CashRegister 
  attr_accessor :total, :discount, :cart
 
  def initialize (discount = 0)
    @total = 0 
    @discount = discount
    @cart = []
  end
  
  def add_item (title, price, quantity = 1)
    @total += price*quantity
    @cart << title 
  end
  
end

