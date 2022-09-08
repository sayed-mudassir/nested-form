class Post < ApplicationRecord
has_many :names, inverse_of: :post, dependent: :delete_all
  accepts_nested_attributes_for :names, reject_if: :all_blank, allow_destroy: true
end
