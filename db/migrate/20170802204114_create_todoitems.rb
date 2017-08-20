class CreateTodoitems < ActiveRecord::Migration[5.0]
  def change
    create_table :todoitems do |t|
      t.date :due_date
      t.string :task_title
      t.string :description
      t.references :todolist, foreign_key: true

      t.timestamps
    end
  end
end
