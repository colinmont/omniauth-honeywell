require 'omniauth-oauth2'


module OmniAuth
  module Strategies
    class Honeywell < OmniAuth::Strategies::OAuth2  
      option :name, 'honeywell'
      
      option :client_options, {
        :site => 'https://www.honeywell.com/',
        :authorize_url => 'https://api.honeywell.com/oauth2/authorize',
        :token_url => 'https://api.honeywell.com/oauth2/token'
      }
      
      def callback_url
        options[:callback_url] || super
      end      
    end
  end
end