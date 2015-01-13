json.array!(@tasks) do |task|
  json.extract! task, :id, :project_id, :task_num, :task_name, :person_id, :pct_time, :base_start, :base_finish, :proj_start, :proj_finish, :task_deps, :task_status, :task_notes
  json.url task_url(task, format: :json)
end
