# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tiger_text_user_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "tiger_text_user_validator"
  spec.version       = TigerTextUserValidator::VERSION
  spec.authors       = ["fred"]
  spec.email         = ["fdkatona@gmail.com"]
  spec.description   = %q{'Validate a tiger text user.  Check to see if they can log in.'}
  spec.summary       = %q{'Receives a tiger text user name and password.  validates call'}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

end
