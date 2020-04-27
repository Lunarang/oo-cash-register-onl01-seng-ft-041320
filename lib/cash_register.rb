class CashRegister 
  attr_accessor :total, :discount, :cart
 
  def initialize (discount = 0)
    @total = 0 
    @discount = discount
    @cart = []
  end
  
  def add_item (title, price, quantity = 1)
    @total += price*quantity
    quantity.times { @cart << title } 
  end
  
  def apply_discount
    if @discount > 0 
      @total -= @total*@discount/100
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @cart 
  end
  
  def void_last_transaction
    @total -= 
  end 
  
  
end

