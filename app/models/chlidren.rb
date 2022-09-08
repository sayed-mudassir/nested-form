class Chlidren < ApplicationRecord
	has_many :results, inverse_of: :chlidren, dependent: :delete_all
  accepts_nested_attributes_for :results, reject_if: :all_blank, allow_destroy: true
end
