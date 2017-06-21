class Admin::PostsController<Admin::BaseController
	def index
		@posts=Post.all
	end

	def new
		@post=Post.new
	end

	def create
	   @post=Post.new(post_params)
	   if @post.save
	   	redirect_to admin_root_path
	   else
	     render 'new'
       end
	end

	private
	   def post_params
	   		params.require(:post).permint(:title,:author,:content,:published_at)
	   end
end
