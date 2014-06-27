class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.text :message
    	t.belongs_to :user
    	t.belongs_to :topic
    	t.string :status, length: 25
      t.timestamps
    end
  end
end
