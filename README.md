# "getnextid" ruby gem

Global unique counters for your infrastructure.

Use getnextid.com to increment your build numbers etc.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'getnextid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install getnextid

## Usage

Get current counter value:
```ruby
require 'getnextid'
Getnextid.get('mgz.getnextid.rubygem.test', 'wnHAJwIFoFab')
=> 8
```

Increment counter and get new value:
```ruby
require 'getnextid'
Getnextid.increment_and_get('mgz.getnextid.rubygem.test', 'wnHAJwIFoFab')
=> 9
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mgz/getnextid-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
