class CommentsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :set_comment, only: %i[ edit update destroy ]

  def create
    @post = Post.find(
        params[:post_id]
    )
    
    comment_hash = comment_params
    comment_hash[:user] = current_user
    
    @comment = @post.comments.create( comment_hash )
    
    redirect_to post_path(@post)
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to post_path(@post), notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end 

    def comment_params
        params.require(:comment).permit(:body)
    end

end
