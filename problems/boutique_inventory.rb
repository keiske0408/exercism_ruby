=begin
You run an online fashion boutique. Your big annual sale is coming up, so you want to create some functionality to
help you take stock of your inventory to make sure you're ready.
=end
class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item|
      item[:name]
    }.sort
  end

  def cheap
    @items.select { |items| items[:price] < 30 }
  end

  def out_of_stock
    @items.select { |items| items[:quantity_by_size].none? }
  end

  def stock_for_item(name)
    @items.select { |items|
      if items[:name] == name;
        return items[:quantity_by_size]
      end }
  end

  def total_stock
    items.sum do |item|
      sum = 0
      item[:quantity_by_size].each do |size, value|
        sum += value
      end
      sum
    end
  end

  private

  attr_reader :items
end

names = BoutiqueInventory.new([
                                { price: 65.00, name: "Maxi Brown Dress", quantity_by_size: { s: 3, m: 7, l: 8, xl: 4 } },
                                { price: 50.00, name: "Red Short Skirt", quantity_by_size: {} },
                                { price: 29.99, name: "Black Short Skirt", quantity_by_size: { s: 1, xl: 4 } },
                                { price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: { s: 7, m: 2 } }
                              ]).total_stock

#=> 36
puts names


