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
  
  def apply_discount
    if @discount > 0 
      @total -= @total*@discount/100
      "After the discount, the total comes to $#{@total}."
    else 
      puts "No discounts apply"
    end
  end
  
end

