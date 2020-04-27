class CashRegister 
  attr_accessor :total, :discount, :cart
 
  def initialize (discount = 0)
    @total = 0 
    @discount = discount
    @cart = []
  end
  
  def add_item (title, price)
    @total = 0 + price
    @cart << title 
  end
  
end

