module Riotkit

  module Defaults

    class << self
      def options
        Hash[Riotkit::Configurable.keys.map{ |key| [key, send(key)] }]
      end

      # Default access token is grabbed from ENV
      # @return [String]
      def access_token
        ENV['RIOT_API_ACCESS_TOKEN']
      end

      # Default region is grabbed from ENV
      # @return [String]
      def region
        ENV['RIOT_API_REGION'] || 'euw'
      end

      # Constructed endpoint
      # @return [String]
      # TODO: This gets cut off after .net
      def endpoint
        "https://#{region}.api.pvp.net"
      end
    end

  end
end
