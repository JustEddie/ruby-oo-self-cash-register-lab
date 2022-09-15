
class CashRegister

    attr_accessor :discount, :total


    def initialize (discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = ""
    end

    def total
        @total
    end

    def add_item(title,price,quantity=1)
        @last_transaction = price*quantity
        @total += price*quantity
        quantity.times {@items << title}

    end

    def apply_discount
        if @discount==0 
            "There is no discount to apply."
        else
        @total=@total*(100-discount)/100
        "After the discount, the total comes to $#{total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end