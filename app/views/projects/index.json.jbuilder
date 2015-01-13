json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :product_line, :program_name, :project_phase, :sponsor, :owner, :proj_status, :proj_notes
  json.url project_url(project, format: :json)
end
