
require 'pry'

class CashRegister 
    attr_accessor  :total, :discount, :items, :transactions
    
    def initialize(discount=0, total=0)
        @total = total
        @discount = discount
        @items = []
        @transactions = []
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        @items.concat ([title] * quantity)
        @transactions << price * quantity
    end 
    
    def apply_discount
        # percentage_calc = @discount / 1000
        # what_to_sub = @total * percentage_calc
        # @total -= what_to_sub
        if @discount > 0 
            percentage = @discount /100.to_f * @total
            total = @total -= percentage.to_i
            "After the discount, the total comes to $#{total}."
        else 
            "There is no discount to apply."
        end 
        #review this because it was fucking horrible.
        #discount had to go first when initiated. SMH
    end

    def void_last_transaction
        @total -= @transactions.last     
    end 

end
