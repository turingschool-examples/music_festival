require 'minitest/autorun'
require 'minitest/pride'
require './lib/artist'

class ArtistTest < Minitest::Test
  def test_it_exists
    artist = Artist.new("Punch Brothers", "10000")
    assert_instance_of Artist, artist
  end

  def test_it_has_attributes
    artist = Artist.new("Punch Brothers", "10000")
    assert_equal "Punch Brothers", artist.name
    assert_equal 10000, artist.salary
  end
end
