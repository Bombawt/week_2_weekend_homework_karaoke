require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("New York, New York", "Frank Sinatra")
  end

  def test_song_has_a_name()
    assert_equal("New York, New York", @song.name)
  end















end
