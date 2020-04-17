class AddStageToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :stage, :integer
  end
end
