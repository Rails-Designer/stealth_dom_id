module StealthDomId
  class Railtie < Rails::Railtie
    initializer "stealth_dom_id.action_view" do
      ActiveSupport.on_load(:action_view) do
        include StealthDomId::Core
      end

      ActiveSupport.on_load(:view_component) do
        ViewComponent::Base.include StealthDomId::Core
      end
    end
  end
end
