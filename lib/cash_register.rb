class CashRegister
  attr_accessor :total, :discount, :last_trans
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_trans = 0
   end
  
  def add_item(title,price, quanity=1)
    self.total += (price * quanity)
    self.last_trans = self.total
    quanity.times do
      @items << title
    end
    end
  
  def apply_discount
    @total = @total - @discount * 10
    if @discount > 0
    "After the discount, the total comes to $#{@total}."
  else 
    "There is no discount to apply."
  end
end

def items
  @items
end

 def void_last_transaction(price, quanity)
  @last_trans = price * quanity
 @total =  @total -= @last_trans
end
end