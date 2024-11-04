module StealthDomId
  class ColumnError < ArgumentError; end

  module Core
    def dom_id(record_or_class, prefix = nil, column: nil)
      unless record_or_class.is_a?(Class)
        record_id = if column
          record_key_for_dom_id_by_column(record_or_class, column: column)
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

    def record_key_for_dom_id_by_column(record, column:)
      key = [convert_to_model(record).send(column)]

      key ? key.join(JOIN) : key
    rescue NoMethodError => e
      raise ColumnError, "[StealthDomId] Column '#{column}' not found on #{record.class}"
    end
  end
end
