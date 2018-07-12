class CommentsController < ApplicationController
  # before_action :set_comment, only: [:show]
  #before_action :logged_in? -- only signed in users can leave comments 
  
  def index
  end

  def new
    @comment = Comment.new  
    @soupkitchen = Soupkitchen.find(params[:soupkitchen_id])  
  end 


# HELP ON THIS -- permitted: false? Why won't it save? 
  def create
 binding.pry
    @soupkitchen = Soupkitchen.find(params[:soupkitchen_id])
    @comment = @soupkitchen.comments.build(comment_params)
    binding.pry
    # @comment.valid?
    # puts @comment.errors.full_messages 
     #Not getting added , so counter doesn't increase, and 1 new one replaces the last new one. then when I reloaded view, all new comments were gone. 
    if @comment.save
      redirect_to soupkitchen_path(@soupkitchen)
    else 
      render "soupkitchens/show", notice: "Something went wrong, try again."
    end
    # HELP when it renders, it doesn't add the count. 
  end

  # def show
  # ADD THIS< WITH EDIT? edit link_to goes to this show page., if proper 
  # end 

    # def index
    #   @comments = Comments.where(soupkitchen_id = ?, params[:soupkitchen_id)
    # end

  # private 
  # def comment_params
  #   params.require(:comment).permit(:title, :content, :soupkitchen_id, :user_id)
  # end

#   # def set_comment
#   #   @comment = Comment.find(params[:id])
#   # end
end