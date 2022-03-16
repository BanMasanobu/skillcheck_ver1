# frozen_string_literal: true

module JsonV1
    # Variant json
    class Variant
      def self.generate(variant)
        return nil if variant.blank?

        {
          id: variant.id,
          state: variant.state,
          price: variant.price,
          currency: variant.currency,
          measurement: variant.measurement
        }
      end
    end
  end
