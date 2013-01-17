class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content
      t.references :checklist

      t.timestamps
    end
    add_index :items, :checklist_id
  end
end
