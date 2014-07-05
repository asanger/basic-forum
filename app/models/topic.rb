class Topic < ActiveRecord::Base
	has_many :posts
	belongs_to :user
	has_one :initial_post, -> { order(created_at: :desc).where(:parent_id => nil) }, class_name: 'Post'

	accepts_nested_attributes_for :posts, :initial_post

	# def initial_post
	# 	self.posts.first || self.posts.build
	# 	# Post.find_or_initialize_by_topic_id(self.id)
	# end

end
