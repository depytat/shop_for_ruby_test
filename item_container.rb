module ItemContainer

	module Manager
		  def add_item(item)
		    @items.push item
		  end
		  
		  def remove_item
		    @items.pop
		  end  

		  def validate
		    @items.each {|i| puts "no price" if i.price.nil?}
		  end  

		  def delete_invalid_item
		    @items.delete_if {|i| i.price.nil?}
		  end 
	end	

	module Info
		def count_valid_item
			@items.count {|i| i.price}
		end	
	end	
  

end