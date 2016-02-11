require_relative "cart"
require_relative "item"



item = Item.new({:price => 10, :weight => 300, :name => "banana"})
item2 = Item.new({ :weight => 300, :name => "banana"})
item.info { |attr| puts attr }

cart = Cart.new

cart.add_item(item)
cart.add_item(item2)
p cart
cart.delete_invalid_item
p cart
# cart = Cart.new

# cart.add_item(Item.new)

# cart.add_item(Item.new)
# p cart.items

# cart.validate

# cart.remove_item
# p cart.items