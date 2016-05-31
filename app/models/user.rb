class User < ActiveRecord::Base
	def index
		@posts = Post.paginate :page => params[:page]
	end
end
