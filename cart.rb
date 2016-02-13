class Cart

  attr_reader :items

  def initialize
    @items = []
  end

  include ItemContainer::Manager
end 