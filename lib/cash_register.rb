
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        transaction_value = price * quantity
        @total += transaction_value
        quantity.times {@items << title}
        @last_transaction = transaction_value
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        end
        @total -= @total * (@discount / 100.0)
        "After the discount, the total comes to $#{@total.to_i}."
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end