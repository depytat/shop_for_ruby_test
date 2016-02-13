require_relative "item_container"
require_relative "cart"
require_relative "item"
require_relative "real_item"
require_relative "virtual_item"
require_relative "order"
require_relative "item_container"

item1 = VirtualItem.new({:price => 10, :weight => 300, :name => "banana"})
item2 = RealItem.new({ :weight => 300, :name => "banana"})
#item1.info { |attr| puts attr }

cart = Cart.new

cart.add_item(item1)
cart.add_item(item2)
puts cart.items.size
# cart.delete_invalid_item


order = Order.new
order.add_item(item1)
order.add_item(item2)
puts order.items.size

puts order.count_valid_item

puts item1.price
puts item1.real_price
# cart = Cart.new

# cart.add_item(Item.new)

# cart.add_item(Item.new)
# p cart.items

# cart.validate

# cart.remove_item
# p cart.items

#puts Item.discount