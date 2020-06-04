require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class HubSpot < OmniAuth::Strategies::OAuth2
      option :name, 'hubspot'

      args [:client_id, :client_secret]

      option :client_options, {
        site: 'https://api.hubapi.com',
        authorize_url: 'https://app.hubspot.com/oauth/authorize',
        token_url: 'oauth/v1/token'
      }

      uid { raw_info['user_id'] }

      info do
        {
          email:  raw_info['user'],
          domain: raw_info['hub_domain'],
          hub_id: raw_info['hub_id'],
          app_id: raw_info['app_id'],
        }
      end

      extra do
        {
          raw_info: raw_info,
        }
      end

      def raw_info
        @raw_info ||= access_token.get("https://api.hubapi.com/oauth/v1/access-tokens/#{access_token.token}").parsed
      end
      
      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization 'hubspot', 'HubSpot'
