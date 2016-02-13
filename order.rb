class Order

	attr_reader :items

	def initialize
      @items = []
    end

    def place
    end

    include ItemContainer::Manager
    include ItemContainer::Info
end