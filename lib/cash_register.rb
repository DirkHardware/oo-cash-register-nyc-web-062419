class CashRegister

  def initialize(discount = 0)
    @total = 0
    @employee_discount = discount
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

  def apply_discount
    if @employee_discount > 0
      binding.pry
      @total = @total - @employee_discount
      binding.pry
      "After the discount, the total comes to #{@total}."
    end
  end
end
