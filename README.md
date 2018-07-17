# Music Festival

## Instructions

1. Clone this repo: git@github.com:turingschool-examples/music_festival.git
1. Complete the exercise below

## Iteration 1 (Tests Provided)

Using the tests provided in `artist_test.rb`, create an `Artist` class. The tests provided satisfy the following interaction pattern:

```ruby
pry(main)> require './lib/artist'
#=> true

pry(main)> artist = Artist.new("Greensky Bluegrass", "10000")
#=> #<Artist:0x00007f871f41f368...>

pry(main)> artist.name
#=> "Greensky Bluegrass"

pry(main)> artist.salary
#=> 10000
```

## Iteration 2

Use TDD to create a `MusicFestival` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/music_festival'
#=> true

pry(main)> require './lib/artist'
#=> true

pry(main)> music_festival = MusicFestival.new("Telluride Bluegrass Festival")
#=> #<MusicFestival:0x00007fea3c862a08...>

pry(main)> music_festival.name
#=> "Telluride Bluegrass Festival"

pry(main)> music_festival.artists
#=> []

pry(main)> artist_1 = Artist.new("Punch Brothers", "10000")
#=> #<Artist:0x00007fea3d05df00...>

pry(main)> artist_2 = Artist.new("Yonder Mountain String Band", "3500")
#=> #<Artist:0x00007fea3b845198...>

pry(main)> music_festival.add_artist(artist_1)
#=> [#<Artist:0x00007fea3d05df00...]

pry(main)> music_festival.add_artist(artist_2)
#=> [#<Artist:0x00007fea3d05df00...>, #<Artist:0x00007fea3b845198...>]

pry(main)> music_festival.artists
#=> [#<Artist:0x00007fea3d05df00...>, #<Artist:0x00007fea3b845198...>]
```

## Iteration 3

Use TDD to update your `MusicFestival` class so that it responds to the following interaction pattern:

```ruby
pry(main)> require './lib/music_festival'
#=> true

pry(main)> require './lib/artist'
#=> true

pry(main)> music_festival = MusicFestival.new("Telluride Bluegrass Festival")
#=> #<MusicFestival:0x00007fea3c862a08...>

pry(main)> artist_1 = Artist.new("Punch Brothers", "10000")
#=> #<Artist:0x00007fea3d05df00...>

pry(main)> artist_2 = Artist.new("Yonder Mountain String Band", "3500")
#=> #<Artist:0x00007fea3b845198...>

pry(main)> artist_3 = Artist.new("Leftover Salmon", "9125")
#=> #<Artist:0x00007f8d5a012d60...>

pry(main)> music_festival.add_artist(artist_1)
#=> [#<Artist:0x00007fea3d05df00...]

pry(main)> music_festival.add_artist(artist_2)
#=> [#<Artist:0x00007fea3d05df00...>, #<Artist:0x00007fea3b845198...>]

pry(main)> music_festival.add_artist(artist_3)
#=> [#<Artist:0x00007fea3d05df00...>, #<Artist:0x00007fea3b845198...>, #<Artist:0x00007f8d5a012d60...>]

pry(main)> music_festival.total_salary
#=> 22625

pry(main)> music_festival.average_salary
#=> 7541.67
```

## Iteration 4

Use TDD to update your `MusicFestival` class so that it responds to the following interaction pattern.

For the `headliners` method, a headliner is defined as an artist whose salary is greater than the average salary.

```ruby
pry(main)> require './lib/artist'
#=> true

pry(main)> require './lib/music_festival'
#=> true

pry(main)> artist_1 = Artist.new("Punch Brothers", "10000")
#=> #<Artist:0x00007f8b1b9b3ab8...>

pry(main)> artist_2 = Artist.new("Yonder Mountain String Band", "3500")
#=> #<Artist:0x00007f8b1d13add0...>

pry(main)> artist_3 = Artist.new("Leftover Salmon", "9125")
#=> #<Artist:0x00007f8b1bb7f978...>

pry(main)> music_festival = MusicFestival.new("Telluride Bluegrass Festival")
#=> #<MusicFestival:0x00007f8b1d0f21e8...>

pry(main)> music_festival.add_artist(artist_1)
#=> [#<Artist:0x00007f8b1b9b3ab8...>]

pry(main)> music_festival.add_artist(artist_2)
#=> [#<Artist:0x00007f8b1b9b3ab8...>, #<Artist:0x00007f8b1d13add0...>]

pry(main)> music_festival.add_artist(artist_3)
#=> [#<Artist:0x00007f8b1b9b3ab8...>, #<Artist:0x00007f8b1d13add0...>, #<Artist:0x00007f8b1bb7f978...>]

pry(main)> music_festival.headliners
#=> [#<Artist:0x00007f8b1b9b3ab8...>, #<Artist:0x00007f8b1bb7f978...>]

pry(main)> music_festival.lineup
#=> "Telluride Bluegrass Festival lineup:\nFeaturing:\nPunch Brothers\nLeftover Salmon\n\nWith:\nYonder Mountain String Band\n"
```
