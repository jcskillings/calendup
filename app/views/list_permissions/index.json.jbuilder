json.array!(@list_permissions) do |list_permission|
  json.extract! list_permission, :id, :listId, :UserId, :permissionType, :shareStatus
  json.url list_permission_url(list_permission, format: :json)
end
