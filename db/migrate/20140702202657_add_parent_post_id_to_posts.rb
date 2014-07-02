class AddParentPostIdToPosts < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
			t.references :parent_post
  	end
  end
end
