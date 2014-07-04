class Post < ActiveRecord::Base
	before_save do
		self.status = 'Posted'
	end

	belongs_to :user
	belongs_to :topic
	has_many :children, class_name: "Post", foreign_key: "parent_id"
	belongs_to :parent, class_name: "Post"

	acts_as_tree order: 'created_at DESC'

	accepts_nested_attributes_for :children
end
