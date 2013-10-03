class CreatePingluns < ActiveRecord::Migration
  def change
    create_table :pingluns do |t|
      t.text :content
      t.references :user
      t.references :article

      t.timestamps
    end
    add_index :pingluns, :user_id
    add_index :pingluns, :article_id
    add_index :pingluns, :created_at
  end
end
