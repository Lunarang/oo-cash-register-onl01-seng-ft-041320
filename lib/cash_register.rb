class CashRegister 
  attr_accessor :total, :discount, :cart, :last_item
 
  def initialize (discount = 0)
    @total = 0 
    @discount = discount
    @cart = []
    @last_item = last_item
  end
  
  def add_item (title, price, quantity = 1)
    @total += price*quantity
    quantity.times { @cart << title } 
    @last_item = [price*quantity, quantity]
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
    @total -= @last_item[0]
    @last_item[1].times { @cart.pop }
  end 
  
end

