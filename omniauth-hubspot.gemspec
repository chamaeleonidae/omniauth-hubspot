# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/hubspot/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth'
  gem.add_dependency 'oauth2'
  gem.add_dependency 'omniauth-oauth2'

  gem.authors       = ['Brian Norton']
  gem.email         = ['brian@trychameleon.com']
  gem.description   = %q{An OmniAuth strategy for authenticating with the HubSpot API.}
  gem.summary       = %q{OmniAuth strategy for authenticating with HubSpot.}
  gem.homepage      = 'https://github.com/chamaeleonidae/omniauth-hubspot'
  gem.license       = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-hubspot'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::HubSpot::VERSION
end

