# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "spree-refinerycms-authentication"
  gem.version       = "0.1.0"
  gem.authors       = ["Adrian Macneil", "Michael de Silva"]
  gem.email         = ["adrian@crescendo.net.nz", "hello@inertialbox.com"]
  gem.description   = "Configure Spree to use RefineryCMS for authentication"
  gem.summary       = "Spree has a pluggable authentication system. This gem will tell Spree to use the built in RefineryCMS user model and authentication."
  gem.homepage      = "https://github.com/adrianmacneil/spree-refinerycms-authentication"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'spree', '~> 2.4.3.beta'
  gem.add_runtime_dependency 'refinerycms', '~> 3.0'
end
