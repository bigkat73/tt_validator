require_relative "../lib/tiger_text_user_validator/connection.rb"
require "minitest/autorun"

describe TigerTextUserValidator::Connection do

  let(:conn){ TigerTextUserValidator::Connection.new({user_name: 'test', password: 'test'}) }

  describe "when tt_url is asked for" do
    it "should have 3 tests in it" do
      conn.url_string.scan('test').size.must_equal 3
    end

    it "should have a valid uri with ssl" do
      conn.tt_uri.class.must_equal URI::HTTPS
    end
  end

end