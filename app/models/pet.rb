class Pet < ApplicationRecord
  validates :name, presence: true
  validates :found_on, presence: true
  validates :address, presence: true
  validates :species, inclusion: { in: %w[dog cat rabbit snake] }

  def found_days_ago
    "#{(Date.today - found_on).to_i} days ago"
  end
end
