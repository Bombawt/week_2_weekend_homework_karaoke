require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song')
require_relative('../customer')

class TestCustomer < Minitest::Test

  def setup
    @song1 = Song.new("New York, New York", "Frank Sinatra")
    @song2 = Song.new("I Will Survive", "Gloria Gaynor")

    @customer1 = Customer.new("Monica", "New York, New York")
    @customer2 = Customer.new("Rachel", "I Will Survive")
    @customer3 = Customer.new("Phoebe", "I Am The Walrus")
    @customer4 = Customer.new("Joey", "Blurred Lines")
    @customer5 = Customer.new("Chandler", "Tomorrow (Annie Soundtrack)")
    @customer6 = Customer.new("Ross", "Baby Got Back")
  end

  def test_customer_has_a_name()
    assert_equal("Monica", @customer1.name)
  end

  def test_customer_has_a_favourite_song()
    assert_equal("I Will Survive", @customer2.favourite_song)
  end


end
