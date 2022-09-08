class Student < ApplicationRecord
  has_many :subjects, inverse_of: :student, dependent: :delete_all
  accepts_nested_attributes_for :subjects, reject_if: :all_blank, allow_destroy: true
end
