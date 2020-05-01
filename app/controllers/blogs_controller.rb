class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def create
		@blog = Blog.new(blog_params)
		@blog.save!
	end

	def new
		@blog = Blog.new()
	end

	def update
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def delete
	end
	
	private
	
	def blog_params
		params.require(:blog).permit(:title, :description, :published, :published_at, :category, :sub_category, images: [])
	end
end
