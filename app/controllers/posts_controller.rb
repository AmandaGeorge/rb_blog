class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		post = Post.create(post_params)
		redirect_to post_path(post)
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
		if current_user.posts.include? @post
			render :edit
		else
			redirect_to profile_path
		end
	end

	def update
		post = Post.find(params[:id])
		if current_user.posts.include? post
			post.update_attributes(post_params)
			redirect_to post_path(post)
		else
			redirect_to profile_path
		end
	end

	def destroy
	end

	private
		def post_params
			params.require(:post).permit(:title, :content)
		end
end
