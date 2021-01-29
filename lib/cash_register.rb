class CashRegister 
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount = 0)  #optionally takes an employee discount on initialization
        @total = 0  #sets an instance variable @total on initialization to zero
        @discount = discount
        @items = [] #set items eual to an array to can manipulate it (add too, remove)

    end


    def add_item(title, price, quantity = 1) #accepts titel, price, and optional quantity
        self.total += price * quantity  #increases the total  
         quantity.times do    #all items that have been added
            @items << title   #for every item/all quantities, add title to items array
        end
        self.last_item = price * quantity
        #doesn't forget about the previous total
        #end 
    end

    def apply_discount
        if discount != 0
             self.total -= self.total * discount / 100
             return "After the discount, the total comes to $#{self.total}."
        else "There is no discount to apply." 
        #if cash register was initialized w/employee discount
        #applies the discount to the total price #new price?
        #returns discount success message: "After the discount, the total comes to $800."
        #reduces the total
        #if no employee discount returns "There is no discount to apply."
        end
    end


    def items
       @items  #returns an array containing all items, already set empty array with a setter and getter
    end

    def void_last_transaction
        self.total = self.total - self.last_item
        #subtracts the last item from the total
        #returns the total to 0.0 if all items have been removed
    end


end

