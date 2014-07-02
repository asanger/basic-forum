class Post < ActiveRecord::Base
	before_save do
		self.status = 'Posted'
	end

	belongs_to :user
	belongs_to :topic
	has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"
	belongs_to :parent_post, class_name: "Post"
end
