class CashRegister
  attr_accessor :total, :discount



  def initialize(discount=0)
    @total=0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
      @items<<item
      self.total = self.total+(price*quantity)
  end

  def apply_discount
     @discount>0 ? @total*discount/100 : @total
  end

end
