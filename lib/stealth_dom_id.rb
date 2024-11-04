# frozen_string_literal: true

require_relative "stealth_dom_id/version"
require "stealth_dom_id/core"
require "active_support"

module StealthDomId
  class Error < StandardError; end
end

ActiveSupport.on_load(:action_view) do
  include StealthDomId::Core
end
