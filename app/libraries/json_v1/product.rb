# frozen_string_literal: true

module JsonV1
    # Product json
    class Product
      def self.generate(product)
        return nil if product.blank?

        {
          id: product.id,
          description: product.description,
          name: product.name,
          sub_name: product.sub_name,
          variants: product.variants.map { |variant| JsonV1::Variant.generate(variant) }
        }
      end
    end
  end
