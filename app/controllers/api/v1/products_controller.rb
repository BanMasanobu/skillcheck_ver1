# frozen_string_literal: true

module Api
  module V1
    # procuct api
    class ProductsController < ApplicationController
      def index
        @products = Product.includes(:variants).order_desc
        product_json = @products.collect do |product|
          JsonV1::Product.generate(product)
        end
        render json: { data: { products: product_json } }
      end
    end
  end
end
