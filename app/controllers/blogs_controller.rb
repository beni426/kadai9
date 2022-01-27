class BlogsController < ApplicationController
    def new 
        @blog=Blog.new
    end
    def create
        @blog = current_user.blogs.build(blog_params)
    end



    def confirm
        @blog = current_user.blogs.build(blog_params)
        render :new if @blog.invalid?
    end
    def show
    end
    def edit
    end
    def update
     if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
     else
      render :edit
     end
    end
    def destroy
      @blog.destroy
      redirect_to blogs_path, notice:"ブログを削除しました！"
    end
    private
    def blog_params
      params.require(:blog).permit(:title,:content)
    end
    def set_blog
      @blog = Blog.find(params[:id])
    end
  end

end
