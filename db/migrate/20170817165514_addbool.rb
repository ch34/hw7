class Addbool < ActiveRecord::Migration[5.0]
  def change
  	add_column :todoitems, :done, :boolean, :default => false
  end
end
