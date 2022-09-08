class Shop < ApplicationRecord
	has_many :items, inverse_of: :shop, dependent: :delete_all
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true

end
