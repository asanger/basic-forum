class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
    	t.belongs_to :user
    	t.string :title, length: 255
    	t.string :status, length: 25
      t.timestamps
    end
  end
end
