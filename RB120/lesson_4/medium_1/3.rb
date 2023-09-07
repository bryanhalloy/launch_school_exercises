class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end


Nothing is syntactically wrong, but it introduces risk because now the @product_name instance variable can be changed by clients outside of the class. Same is true for update_quantity, meaning clients can bypass the built-in checks of that custom setter method. 