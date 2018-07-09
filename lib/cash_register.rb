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
     self.total = self.total-(self.total*discount/100) if @discount>0
     self.total
  end

end
