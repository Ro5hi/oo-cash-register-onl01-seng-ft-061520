class CashRegister

  attr_accessor :items, :total, :discount, :last_transaction_amount 

  def initialize(discount = 0)
    
    @items = []
    @discount = discount 
    @total = 0
    
  end


  def add_item(title, amount, quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += amount*quantity
    @last_transaction_amount = @total
    @total
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def void_last_transaction
    @total -= self.void_last_transaction 
  end
end