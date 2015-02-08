# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'novnc-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "novnc-rails"
  gem.version       = NoVNC::Rails::VERSION
  gem.authors       = ['Martin Povolny']
  gem.email         = ['mpovolny@redhat.com']
  gem.description   = %q{noVNC HTML5 client packed for Rails application}
  gem.summary       = %q{VNC using HTML5 (WebSockets, Canvas).}
  gem.homepage      = "http://novnc.com"

  gem.files = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "COPYING", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "railties", ">= 3.1.0"
end
