class AddTodoitemstoUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :todoitems, :user_id, :integer
  	add_index :todoitems, :user_id
  end
end
