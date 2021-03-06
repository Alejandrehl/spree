module Spree
  module V2
    module Storefront
      class VariantSerializer < BaseSerializer
        set_type :variant

        attributes :name, :sku, :price, :currency, :display_price, :weight, :height,
                   :width, :depth, :is_master, :options_text, :slug, :description,
                   :track_inventory

        attribute :purchasable,   &:purchasable?
        attribute :in_stock,      &:in_stock?
        attribute :backorderable, &:backorderable?

        has_many :images
      end
    end
  end
end
