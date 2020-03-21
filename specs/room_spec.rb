require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song')
require_relative('../customer')
require_relative('../room')

class TestRoom < Minitest::Test

  def setup
    @song1 = Song.new("New York, New York", "Frank Sinatra")
    @song2 = Song.new("I Will Survive", "Gloria Gaynor")

    @customer1 = Customer.new("Monica", "New York, New York")
    @customer2 = Customer.new("Rachel", "I Will Survive")
    @customer3 = Customer.new("Phoebe", "I Am The Walrus")
    @customer4 = Customer.new("Joey", "Blurred Lines")
    @customer5 = Customer.new("Chandler", "Tomorrow (Annie Soundtrack)")
    @customer6 = Customer.new("Ross", "Baby Got Back")

    @room1 = Room.new("The Lounge", 6, [])
  end

  def test_room_has_a_name()
    assert_equal("The Lounge", @room1.name)
  end

  def test_customer_limit()
    assert_equal(6, @room1.customer_limit)
  end

  def test_room_occupants()
    assert_equal([], @room1.guests)
  end

















end
