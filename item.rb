class Item
 
#------метод инитиолайз без хеша-------
# def initialize
#   @price = 30
#   @weight = 150
# end  

# ---------геттеры и сеттеры---------
#  def price
#    @price
# end
# def price=(price_value)
#   @price = price_value
# end

#--------ридеры и райтеры--------------------
# attr_reader :price, :weight
# attr_writer :price, :weight

def initialize(options = {})
  @price = options[:price]
  @weight = options[:weight]
  @name = options[:name]
end

def info
  yield(price)
  yield(weight)
  yield(name)
end	

  attr_accessor :price, :weight, :name

end

# item1 = Item.new простое создание элемента
# item1 = Item.new({ :price => 30, :weight => 250})  # создание элемента с начальными параметрами в хеше
# puts item1.price
# puts item1.weight

# item1.price=(10)   задание сеттером значения
# item1.weight=(300)  
# puts item1.price
# puts item1.weight

#puts Item.new({:price => 30}).price