class BlogsController < ApplicationController
 

  def show
    @blog=Blog.find(params[:id])
  end
 
  def index
    @blogs=Blog.all
  end
  
  def new
    @blog = Blog.new
  end
  
  
  def create
    @blog=Blog.new(blog_params)
  # バリデーション設定　blog=>@blogへ修正
    if @blog.save
      redirect_to blog_path(@blog.id)
    else
      render :new
    end
  end

# 編集機能
  def edit
    @blog=Blog.find(params[:id])
  end
  
  def update
    blog=Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path(blog)
  end
  
  def destroy
    blog=Blog.find(params[:id])
    blog.destroy
    redirect_to blogs_path
  end
  
  private
  # ストロングパラメータ(入力フォームからのデータを受け取る)
  def blog_params
    params.require(:blog).permit(:title, :categoly, :body)
  end
 
  
  
end
