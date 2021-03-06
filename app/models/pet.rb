class Pet < ApplicationRecord
  # associations (not in this app)
  validates :found_on, presence: true
  SPECIES = ['snake', 'ferret', 'alligator', 'gorilla', 'penguin', 'capybara']
  validates :species, inclusion: { in: SPECIES }
  enum status: { healthy: 0, wounded: 1, dead: 2 }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end

# Pet::SPECIES
