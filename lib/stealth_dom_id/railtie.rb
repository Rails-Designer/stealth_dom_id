module StealthDomId
  class Railtie < Rails::Railtie
    initializer "stealth_dom_id.action_view" do
      ActiveSupport.on_load(:action_view) do
        include StealthDomId::Core
      end
    end
  end
end
