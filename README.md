# TigerTextUserValidator

Use to validate tiger text users against the api

## Installation

Add this line to your application's Gemfile:

    gem 'tiger_text_user_validator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tiger_text_user_validator

## Usage

ttval = TigerTextUserValidator::UserValidator.new({user_name: <username>, password: <password>})

ttval.valid?

returns boolean

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
