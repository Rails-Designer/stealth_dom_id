module StealthDomId
  class AttributeError < ArgumentError; end

  module Core
    def dom_id(record_or_class, prefix = nil, attribute: nil)
      unless record_or_class.is_a?(Class)
        record_id = if attribute
          record_key_for_dom_id_by_attribute(record_or_class, attribute: attribute)
        else
          record_key_for_dom_id(record_or_class)
        end
      end

      if record_id
        "#{dom_class(record_or_class, prefix)}#{JOIN}#{record_id}"
      else
        dom_class(record_or_class, prefix || NEW)
      end
    end

    private

    JOIN = "_".freeze
    NEW = "new".freeze

    def record_key_for_dom_id_by_attribute(record, attribute:)
      key = [convert_to_model(record).send(attribute)]

      key ? key.join(JOIN) : key
    rescue NoMethodError => e
      raise AttributeError, "[StealthDomId] Attribute '#{attribute}' not found on #{record.class}"
    end
  end
end
