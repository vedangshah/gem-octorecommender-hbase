require 'cequel'

module Octo
  class ProductPageView
    include Cequel::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :userid,      :bigint
    key :created_at,  :timestamp

    column :product_id, :bigint

    column :customid, :uuid, :index => true
  end
end