class Post < ActiveRecord::Base
	before_save do
		self.status = 'Posted'
	end
	
	belongs_to :user
	belongs_to :topic
end
