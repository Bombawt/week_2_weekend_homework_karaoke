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

    @customer1 = Customer.new("Monica", "New York, New York", 50)
    @customer2 = Customer.new("Rachel", "I Will Survive", 25)
    @customer3 = Customer.new("Phoebe", "I Am The Walrus", 0)
    @customer4 = Customer.new("Joey", "Blurred Lines", 5)
    @customer5 = Customer.new("Chandler", "Tomorrow (Annie Soundtrack)", 100)
    @customer6 = Customer.new("Ross", "Baby Got Back", 300)

    @room1 = Room.new("The Lounge", 6, [], [@song1])
    @room2 = Room.new("The Honeymoon Suite", 2, [@customer2, @customer6], [@song2])
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

  def test_add_customer_to_room()
    @room1.add_customer_to_room(@customer1)
    assert_equal(1, @room1.guests.length)
  end

  def test_remove_customer_from_room()
    @room2.remove_customer_from_room(@customer2)
    assert_equal(1, @room2.guests.length)
  end

  def test_add_song_to_room()
    @room2.add_song_to_room(@song1)
    assert_equal(2, @room2.songs.length)
  end

  def test_room_occupancy_limit()
    room_status = @room2.room_occupancy_limit(@customer3)
    assert_equal("Room Full", room_status)
  end













end
