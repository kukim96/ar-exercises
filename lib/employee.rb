class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, presence: true

  validates :hourly_rate, numericality: {only_integer: true, greater_than: 59, less_than: 201}

  validates :store_id, presence: true
end
