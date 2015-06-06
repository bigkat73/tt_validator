require_relative '../../lib/tiger_text_user_validator/connection'
require 'net/http'
require 'pry'
require 'pry-nav'

module TigerTextUserValidator

  class UserValidator

    attr_reader :conn

    def initialize(args)
      @conn = Connection.new(args)
    end

    def valid?
      response = Net::HTTP.start(conn.tt_uri.host, conn.tt_uri.port,
                                 use_ssl: conn.tt_uri.scheme == 'https') do |http|
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Get.new conn.tt_uri.request_uri
        http.request request
      end
      response.message == "OK"
    end

  end

end
