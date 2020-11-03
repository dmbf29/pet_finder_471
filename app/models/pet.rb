class Pet < ApplicationRecord
  # associations
  # validations
  SPECIES = ['dog', 'snake', 'fish', 'cat', 'mouse', 'hedgehog']
  validates :species, inclusion: { in: SPECIES }
  validates :found_on, presence: true
  validates :name, presence: true

  def found_days_ago
    # integer
    (Date.today - found_on).to_i
  end
end
