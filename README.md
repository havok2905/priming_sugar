# PrimingSugar

A tiny Ruby module for calculating the amount of priming sugar
needed for a brew. Most online calculators are big black boxes,
so I figured an open source solution was needed!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'priming_sugar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install priming_sugar

## Usage

### Args

- **temperature:** in fahrenheit
- **co2:** in volume
- **gallons:** in... gallons
- **sugar eficiency:** in percents represented as 0.00 - 1.00

### .run(args)

```ruby
prime_with_dme = {
  temperature: 75,
  gallons: 1,
  co2: 2.4,
  sugar_efficiency: 0.8
}

PrimingSugar::Calculator.run(prime_with_dme)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/havok2905/priming_sugar. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
