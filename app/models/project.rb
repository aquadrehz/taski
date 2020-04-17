class Project < ApplicationRecord
  after_initialize :set_defaults

  # Custom scopes
  scope :almost_completed, -> {
    where('percent_completed > 75.0')
  }
  scope :still_working, -> {
    where('percent_completed <= 75.0')
  }

  # Add defaults if percent completed nil
  def set_defaults
    self.percent_completed ||= 0.0
  end

  # Integrate validation

  # Integrate callback
  # Integrate database relationships
end
