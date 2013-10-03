class CreateCritics < ActiveRecord::Migration
  def change
    create_table :critics do |t|
      t.text :content
      t.references :user
      t.references :article

      t.timestamps
    end
    add_index :critics, :user_id
    add_index :critics, :article_id
    add_index :critics, :created_at
  end
end
