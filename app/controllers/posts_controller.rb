class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def hobby
    posts_for_branch(params[:action])
  end

  def study
    posts_for_branch(params[:action])
  end

  def team
    posts_for_branch(params[:action])
  end



  private

  def posts_for_branch(branch)
    respond_to |format|
      format.html
      format.js { render partial: 'posts/posts_pagination_page' }
    end
    @categories = Category.where(branch: branch)
    @posts = get_posts.paginate(page: params[:page])
  end

  def get_posts
    PostsForBranchService.new({
      search: params[:search],
      category: prams[:category],
      branch: params[:action]
      }).call
  end
end
