# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-honeywell/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-honeywell"
  spec.version       = Omniauth::Honeywell::VERSION
  spec.authors       = ["Colin Montgomery"]
  spec.email         = ["colinmmontgomery@gmail.com"]

  spec.summary       = "Strategy to authenticate with honeywell via OAuth2 in OmniAuth"
  spec.homepage      = "https://github.com/colinmont/omniauth-honeywell"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency 'omniauth'
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.3.1'
end
