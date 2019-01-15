class Log < ApplicationRecord
  validates :name, presence: true, on: :create
end
