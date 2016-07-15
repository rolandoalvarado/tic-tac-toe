# Tic Tac Toe

This app is a simulation of Tic Tac Toe in a 4x4 board.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tic_tac_toe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe

# Usage

  => tic_tac_toe git:(master) $ play/play_game.rb
    
    Welcome to Tic Tac Toe
    
    Blake has randomly been selected as the first player
    
    _ _ _ _
    
    _ _ _ _
    
    _ _ _ _
    
    _ _ _ _
    
    ...................... 
    
    Blake: Enter a number between 1 and 16 to make your move 
    
    16 
  
    Blake is the winner! 
    X Y X Y
    _ X Y _
    _ Y X _
    _ _ _ X

  
# Running:

  Interactively:

    => tic_tac_toe git:(master) $ play/play_game.rb
    Welcome to Tic Tac Toe
    Blake has randomly been selected as the first player
    _ _ _ _
    _ _ _ _
    _ _ _ _
    _ _ _ _

    Blake: Enter a number between 1 and 16 to make your move

  With invalid commands:

    =>  tic_tac_toe git:(master) $ play/play_game.rb
    Welcome to Tic Tac Toe
    Blake has randomly been selected as the first player
    _ _ _ _
    _ _ _ _
    _ _ _ _
    _ _ _ _

    Blake: Enter a number between 1 and 16 to make your move
    222
    Entered number is not in range. Program terminated!

  Specs, documentation and quality checks are automated through rake.  E.g. to display a list of all tasks:

  =>  tic_tac_toe git:(master) $ rake -T
  rake build            # Build tic_tac_toe-0.1.0.gem into the pkg directory
  rake clean            # Remove any temporary products
  rake clobber          # Remove any generated files
  rake install          # Build and install tic_tac_toe-0.1.0.gem into system gems
  rake install:local    # Build and install tic_tac_toe-0.1.0.gem into system gems without network access
  rake release[remote]  # Create tag v0.1.0 and build and push tic_tac_toe-0.1.0.gem to Rubygems
  rake spec             # Run RSpec code examples

  
  TO run all test and create an html version of the README file. Just execute the command below.

  =>  tic_tac_toe git:(master) $ rake generate_all


  To run all specs:

    =>  tic_tac_toe git:(master) $ rake specs
      /home/blake/.rbenv/versions/2.3.1/bin/ruby -I/home/blake/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rspec-support-3.5.0/lib:/home/blake/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rspec-core-3.5.1/lib /home/blake/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rspec-core-3.5.1/exe/rspec --pattern spec/\*_spec.rb --backtrace

			TicTacToe::Board
			  #initialize
			    initializes the board with a grid
			    sets the grid with three rows by default
			    creates three things in each row by default
			  #grid
			    returns the grid
			  #get_cell
			    returns the cell based on the (x, y) coordinate
			  #set_cell
			    updates the value of the cell object at a (x, y) coordinate
			  #game_over
			    returns :winner if winner? is true
			    returns :draw if winner? is false and draw? is true
			    returns false if winner? is false and draw? is false
			    returns :winner when row has objects with values that are all the same
			    returns :winner when colum has objects with values that are all the same
			    returns :winner when diagonal has objects with values that are all the same
			    returns :draw when all spaces on the board are taken
			    returns false when there is no winner or draw

			TicTacToe::Cell
			  #initialize
			    is initialized with a value of '' by default
			    can be initialized with a value of 'X'

			Array
			  #all_empty?
			    returns true if all elements of the Array are empty
			    returns false if some of the Array elements are not empty
			    returns true for an empty Array
			  #all_same?
			    returns true if all elements of the Array are the same
			    returns false if some of the Array elements are not the same
			    returns true for an empty Array
			  #any_empty?
			    returns true if any elements of the Array is empty
			    returns false for none empty array
			    returns true for an empty Array
			  #none_empty?
			    returns true if any elements of the Array is not empty
			    returns false for an empty Array

			TicTacToe::Game
			  #initialize
			    randomly selects a current_player
			    randomly selects an other player
			  #switch_players
			    will set @current_player to @other_player
			    will set @other_player to @current_player
			  #get_move
			    converts human_move of '1' to [0, 0]
			    converts human_move of '1' to [0, 0]
			  #game_over_message
			    returns '{current player name} won!' if board shows a winner
			    returns 'The game ended in a tie' if board shows a draw

			TicTacToe::Player
			  #initialize
			    raises an exception when initialized with {}
			    does not raise an error when initialized with a valid input hash
			  #color
			    returns the color
			  #name
			    returns the player's name

			TicTacToe
			  has a version number

			Finished in 0.02121 seconds (files took 0.11973 seconds to load)
			40 examples, 0 failures

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rolandoalvarado/tic_tac_toe. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

