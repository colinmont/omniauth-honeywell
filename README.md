# OmniAuth Honeywell Strategy

Strategy to authenticate with honeywell via OAuth2 in OmniAuth

Get your API key at: https://developer.honeywell.com/

For more details, read the honeywell authorization documentation at https://honeywell.by/resources.html

## Installation

Add to your Gemfile:
````ruby
gem 'omniauth-honeywell'
````
then bundle install.

## Usage

In Rails add the following to config/initializers/omniauth.rb
````ruby
use OmniAuth::Builder do
  provider :honeywell, ENV['HONEYWELL_ID'], ENV['HONEYWELL_SECRET']
end
````
This will enable the route /auth/honeywell which will start the OAuth2 flow. See examples/config.ru for a fully working example.

