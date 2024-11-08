# frozen_string_literal: true

# require "active_support"
require "stealth_dom_id/version"
require "stealth_dom_id/core"
require "stealth_dom_id/railtie" if defined?(Rails)

module StealthDomId
  class Error < StandardError; end
end
