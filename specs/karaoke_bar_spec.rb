require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../karaoke_bar')

class TestKaraoke_Bar < Minitest::Test

def setup
  @customer1 = Customer.new("Monica", "New York, New York", 50)
  @customer2 = Customer.new("Rachel", "I Will Survive", 25)
  @customer3 = Customer.new("Phoebe", "I Am The Walrus", 0)
  @customer4 = Customer.new("Joey", "Blurred Lines", 5)
  @customer5 = Customer.new("Chandler", "Tomorrow (Annie Soundtrack)", 100)
  @customer6 = Customer.new("Ross", "Baby Got Back", 300)

  @karaoke_bar = Karaoke_Bar.new("Thank You For The Music", 5, [@customer1, @customer5])
end

def test_karaoke_bar_name()
  assert_equal("Thank You For The Music", @karaoke_bar.name)
end

def test_karaoke_bar_entry_fee()
  assert_equal(5, @karaoke_bar.entry_fee)
end

def test_add_customer_to_waiting_room()
  @karaoke_bar.add_customer_to_waiting_room(@customer4)
  assert_equal(3, @karaoke_bar.customers.length)
end

def test_remove_customer_from_waiting_room()
  @karaoke_bar.remove_customer_from_waiting_room(@customer1)
  assert_equal(1, @karaoke_bar.customers.length)
end

def test_can_customer_cover_entry_fee__true()
  result = @karaoke_bar.can_customer_cover_entry_fee(@customer6)
  assert_equal("Come on in!", result)
  assert_equal(295, @customer6.wallet)
  assert_equal(5, @karaoke_bar.till)
end

def test_can_customer_cover_entry_fee__false()
  result = @karaoke_bar.can_customer_cover_entry_fee(@customer3)
  assert_equal("No Entry", result)
end















end
