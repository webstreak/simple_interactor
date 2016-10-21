[![Circle CI](https://circleci.com/gh/webstreak/simple_interactor.svg?style=shield)](https://circleci.com/gh/webstreak/simple_interactor)
[![Gem Version](https://badge.fury.io/rb/simple_interactor.svg)](http://badge.fury.io/rb/simple_interactor)

SimpleInteractor is a simple wrapper for your PORO classes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_interactor', '~> 0.0.1'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_interactor

## Usage

```ruby
# Inherit your class from SimpleInteractor
class MyInteractor < SimpleInteractor

 # Define instance variables. They will be available after initialization
 expected_params :param1, :param2

 # Define "perform" method without any params
 def perform
   # Use expected params as instance variables
   puts @param1
   puts @param2
 end

end

# and use it
MyInteractor.perform param1, param2
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/webstreak/simple_interactor.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
