class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :note_1
      t.boolean :auto_draft_complete
      t.boolean :live_draft_start
      t.boolean :auto_draft_start
      t.boolean :live_draft_complete
      t.integer :draft_order_1
      t.integer :draft_order_2
      t.integer :draft_order_3
      t.integer :draft_order_4

      t.timestamps
    end
  end
end
