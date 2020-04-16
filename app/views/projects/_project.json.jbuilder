json.extract! project, :id, :title, :description, :percent_completed, :created_at, :updated_at
json.url project_url(project, format: :json)
