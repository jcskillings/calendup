json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :hidden, :completed, :whoCompleted, :dateCompleted, :whoCreated, :createPermission, :whoHid, :dateHidden, :whoEdit, :lastEdit
  json.url task_url(task, format: :json)
end
