
class CashRegister

  attr_accessor :discount, :total

  def initialize(discount =0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    item_details = {}
    item_details[:name] = name
    item_details[:price] = price
    item_details[:amount] = amount

    @cart << item_details
    @total += price * amount
  end

  def discount
    if @discount == 0
      return "There is no discount to apply"
    end
    @total -= @total * @discount / 100
    return "Discount applied, total is $#{@total}."
  end

  def items
    items = []
    @cart.each do | item_info |
            for qty in 1..item_info[:quantity]
        item << item_details[:name]
      end
    end
    item_details
  end
end
