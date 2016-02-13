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

#метод класса

attr_accessor :real_price, :name

@@discount = 0.05

def self.discount
	if Time.now.month == 4
		return @@discount + 0.1
	else
		return @@discount
	end		
end	

def initialize(options = {})
  @real_price = options[:price]
  @name = options[:name]
end

def info
  yield(price)
  yield(name)
end	

def price
	 (@real_price - @real_price*self.class.discount) + tax   if @real_price

end

private

def tax
	type_tax = if self.class == VirtualItem
		1
	else
	    2
	end
	
	cost_tax = if @real_price > 5 
		@real_price*0.2
	else
	    @real_perice*0.1
	end
	  type_tax +  cost_tax
end	   	    	

  

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