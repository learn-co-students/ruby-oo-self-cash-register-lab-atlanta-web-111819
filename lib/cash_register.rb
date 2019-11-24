require 'pry'

class CashRegister 
    attr_accessor :total, :discount, :name, :items, :item_price, :price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @name = name 
        @items = []
        @item_price = []



    end 


    def add_item(name, price, count = 1)
        self.name = name 
        self.price = price 
        
        item_price.push(price*count)
        count.times{item.push(name)} 


        self.total += (price*count)

    end 
    def apply_discount
        
        if self.discount == 0 
            return "There is no discount to apply."
        end 
        dic = self.total - (self.total * (@discount.to_f / 100 ))
        self.total = dic.to_i
        "After the discount, the total comes to $#{self.total}."
    end 

    def item
        return self.items
    end 

    def void_last_transaction
        # self.total
        if item_price.length == 0 
            return self.total = 0.0 
        end 
        self.total -= self.item_price[-1]
        # binding.pry
        return self.total



    end











end 
