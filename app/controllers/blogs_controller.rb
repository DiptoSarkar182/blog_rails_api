class BlogsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :show, :update, :destroy]
  before_action :set_blog, only: [:show, :update, :destroy]

  def index
    begin
      blogs = Blog.all
      if blogs.empty?
        render json: { status: 'success', message: 'No blogs found', data: [] }, status: :ok
      else
        render json: { status: 'success', data: blogs }, status: :ok
      end
    rescue => e
      render json: { status: 'error', message: 'Failed to fetch blogs', errors: e.message }, status: :internal_server_error
    end
  end

  def create
    blog = current_user.blogs.build(blog_params)

    if blog.save
      render json: { status: 'success', message: 'Blog created successfully', data: blog }, status: :created
    else
      render json: { status: 'error', message: 'Failed to create blog', errors: blog.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: { status: 'success', data: @blog }, status: :ok
  end

  def update
    if @blog.update(blog_params)
      render json: { status: 'success', message: 'Blog updated successfully', data: @blog }, status: :ok
    else
      render json: { status: 'error', message: 'Failed to update blog', errors: @blog.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @blog.destroy
    render json: { status: 'success', message: 'Blog deleted successfully' }, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { status: 'error', message: 'Blog not found' }, status: :not_found
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { status: 'error', message: 'Blog not found' }, status: :not_found
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

end
