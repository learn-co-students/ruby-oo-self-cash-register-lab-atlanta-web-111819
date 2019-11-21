require 'pry'
class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @prices = []
    end

    def add_item(item, price, quantity = 1)
        @total += price * quantity
        temp = 0
        for i in 1..quantity do 
            @items << item
            temp += price
        end
        @prices << temp
    end

    def apply_discount
        if @discount > 0
            # binding.pry
            @total = @total - (@total * (@discount/100.0))
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end

    end

    def items
        @items
    end

    def void_last_transaction
        # binding.pry
        @total = @total - @prices.pop
    end
end