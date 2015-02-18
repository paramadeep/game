[![Build Status](https://travis-ci.org/paramadeep/game.svg?branch=master)](https://travis-ci.org/paramadeep/game)

##Usage

```
bundle install
bundle exec rake spec
```

To run it from irb
inside lib/ folder
```ruby
require_relative 'village'

my_village = Village.begins_with :area=>Area.new(4,8),:lives_at=>[[1,4],[2,3],[2,4]]
#=> . . . . . . . .
#=>. . . . * . . .
#=>. . . * * . . .
#=>. . . . . . . .
my_village.evolve
#=> . . . . . . . .
#=>. . . * * . . .
#=>. . . * * . . .
#=>. . . . . . . .

```


##Queries
If user gives lives at border, which is against the rules, should the game continue by marking them dead, else should the game halt with execption

##Pending
* Handle invalid input scenario
* Surroundings for border items? the ripple effects
* few unit tests 
