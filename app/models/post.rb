class Post < ActiveRecord::Base
	self.primary_key = "postId"

	belongs_to :user, primary_key: "userId", foreign_key: "owner"

	def as_json(options={})
	  super(:only => [:postId, :owner, :posted, :tags, :title, :html, :img1])
	end
end