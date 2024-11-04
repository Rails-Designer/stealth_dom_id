# frozen_string_literal: true

require_relative "lib/stealth_dom_id/version"

Gem::Specification.new do |spec|
  spec.name = "StealthDomId"
  spec.version = stealth_dom_id::VERSION
  spec.authors = ["Rails Designer Developers"]
  spec.email = ["devs@railsdesigner.com"]

  spec.summary = "Extends Rails `dom_id` helper to support custom column-based identifiers"
  spec.description = "StealthDomId extends Rails' `dom_id` helper to generate DOM IDs using alternative columns instead of database primary keys. This helps prevent exposing internal database IDs."
  spec.homepage = "https://github.com/Rails-Designer/stealth_dom_id/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Rails-Designer/stealth_dom_id/"

  spec.files = Dir["{bin,app,config,db,lib,public}/**/*", "Rakefile", "README.md", "stealth_dom_id.gemspec", "Gemfile", "Gemfile.lock"]

  spec.required_ruby_version = ">= 3.0.0"
  spec.add_dependency "actionview", ">= 3.0", "< 8.1"
  spec.add_dependency "activesupport", ">= 3.0", "< 8.1"
end
