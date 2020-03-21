class Room

  attr_reader :name, :customer_limit, :guests, :songs

  def initialize(name, customer_limit, guests, songs)
    @name = name
    @customer_limit = customer_limit
    @guests = guests
    @songs = songs
  end

  def add_customer_to_room(customer)
    @guests << customer
  end

  def remove_customer_from_room(customer)
    @guests.delete(customer)
  end

  def add_song_to_room(song)
    @songs << song
  end

  def room_occupancy_limit(customer)
    add_customer_to_room(customer)
    if @guests.size > @customer_limit
      remove_customer_from_room(customer)
      return "Room Full"
    end
  end























end
