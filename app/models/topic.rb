class Topic < ActiveRecord::Base
	has_many :posts
	belongs_to :user

	accepts_nested_attributes_for :posts	
end
