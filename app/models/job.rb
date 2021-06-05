class Job < ApplicationRecord
  belongs_to :user
  has_many :event, dependent: :destroy
end
