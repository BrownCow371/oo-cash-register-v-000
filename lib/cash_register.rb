class CashRegister
  attr_accessor :total :discount



  def initialize(discount=0)
    @total=0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total=+price*quantity
    @items<<item
  end

  def apply_discount
     @discount>0 ? @total*discount% : @total
  end
end
