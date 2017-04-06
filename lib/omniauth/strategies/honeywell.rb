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
      
      def build_access_token
        Rails.logger.debug "Omniauth build access token"
        options.token_params.merge!(:headers => {'Authorization' => basic_auth_header })
        super
      end
      
      def basic_auth_header
        "Basic " + Base64.strict_encode64("#{options[:client_id]}:#{options[:client_secret]}")
      end  
      
      def callback_url
        options[:callback_url] || super
      end      
      
    end
  end
end