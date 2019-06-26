class CashRegister

  def initialize
    @total = 0
  end

  def total
    @total
  end

  def total=(arg)
    @total = arg
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
end
