class Karaoke_Bar

  attr_reader :name, :entry_fee, :customers, :till
  attr_writer :name, :entry_fee, :customers, :till

  def initialize(name, entry_fee, customers)
    @name = name
    @entry_fee = entry_fee
    @customers = customers
    @till = 0
  end

  def add_customer_to_waiting_room(customer)
    @customers << customer
  end

  def remove_customer_from_waiting_room(customer)
    @customers.delete(customer)
  end

  def can_customer_cover_entry_fee(customer)
    add_customer_to_waiting_room(customer)
    if customer.wallet < @entry_fee
      remove_customer_from_waiting_room(customer)
      return "No Entry"
    end
    customer.wallet -= @entry_fee
    @till += @entry_fee
    return "Come on in!"
  end



























end
