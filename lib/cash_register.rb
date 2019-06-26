require 'pry'
class CashRegister

  def initialize(discount = 0)
    @total = 0
    @employee_discount = discount
    @items = []
  end

  def total
    @total
  end

  def total=(arg)
    @total = arg
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @@all << title
  end

  def apply_discount
    if @employee_discount > 0
      @total = @total - @total * @employee_discount / 100.00
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
end
