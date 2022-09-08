class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, inverse_of: :project, dependent: :delete_all
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
end