class ChangePostsParentChild < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  		t.remove :parent_post_id
			t.references :parent
  	end
  end
end
