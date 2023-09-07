class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end


As is, the update_quantity definition is initializing a new local variable named quantity. Instead, we want it to reassign the value of the instance variable @quantity. To do this we need to change it to @quantity or define a setter method for @quantity and use self.quantity. 