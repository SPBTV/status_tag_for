# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "status_tag_for"
  spec.version       = '0.0.1'
  spec.authors       = ["Tema Bolshakov"]
  spec.email         = ["abolshakov@spbtv.com"]
  spec.summary       = "ActiveAdmin component which shows predicate as status."
  spec.description   = "ActiveAdmin component which shows predicate as status."
  spec.homepage      = "https://github.com/SPBTV/status_tag_for"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activeadmin", ">= 0.6"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
end
