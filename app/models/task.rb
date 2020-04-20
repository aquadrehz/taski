class Task < ApplicationRecord
  belongs_to :project

  after_save :update_percent_completed if :mark_completed?

  scope :completed, -> {
    where(completed: true)
  }

  def mark_completed?
    self.completed == true
  end

  def update_percent_completed
    project = Project.find(self.project_id)
    count_of_completed_tasks = project.tasks.completed.count
    count_of_total_tasks = project.tasks.count
    project.update!(percent_completed:
                        Counter.calculate_percent_complete(
                            count_of_completed_tasks, count_of_total_tasks))
  end

end
