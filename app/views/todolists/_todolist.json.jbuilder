json.extract! todolist, :id, :list_due_date, :list_name, :created_at, :updated_at
json.url todolist_url(todolist, format: :json)
