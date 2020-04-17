class Project < ApplicationRecord
  # Custom scopes
  scope :almost_completed, -> {
    where('percent_completed > 75.0')
  }
  scope :still_working, -> {
    where('percent_completed <= 75.0')
  }
  # Add defaults
  # Integrate validation
  # Integrate callback
  # Integrate database relationships
end
