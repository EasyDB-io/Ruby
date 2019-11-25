# EasyDB

EasyDB is a 1-click ephemeral database provider. Create a database at [easydb.io](https://easydb.io)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easydb_io'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easydb_io

## Usage

```ruby
require 'easydb_io'

# Initialize your database
db = EasydbIo::EasyDB.new('YOUR_DB_ID', 'YOUR_DB_TOKEN')

db.put('hello', {look: 'at all this data'})
db.get('hello')
db.list
db.delete('hello') 
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/easydb-io/Ruby-Client.
