class Todolist < ApplicationRecord
  belongs_to :user
  has_many :todoitems

default_scope {order(list_due_date: :asc)}
end
