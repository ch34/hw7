class CreateTagsTodoitems < ActiveRecord::Migration[5.0]
  def change
    create_table :tags_todoitems, id:false do |t|
      t.references :tag, foreign_key: true
      t.references :todoitem, foreign_key: true
    end
  end
end
