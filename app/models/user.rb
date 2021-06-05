class User < ApplicationRecord
  has_many :job, dependent: :destroy
end
