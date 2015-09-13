require "minitest/autorun"
require_relative "../lib/tiger_text_user_validator.rb"
require_relative '../lib/tiger_text_user_validator/user_validator.rb'

describe TigerTextUserValidator::UserValidator do

  let(:tt_validator){ TigerTextUserValidator::UserValidator.new({user_name: 'test',password: 'test'}) }

  describe "when tt_validator is asked " do
    it "validity should be false" do
      tt_validator.valid?.must_equal false
    end
  end

end
