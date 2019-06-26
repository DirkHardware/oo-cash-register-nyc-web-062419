require 'pry'
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
      @total = @total - @total * @employee_discount / 100.00
      binding.pry
      discount_total = @total.to_f
      "After the discount, the total comes to #{discount_total}."
    end
  end
end
