class CommentsController < ApplicationController
before_action :find_discussion

def create
        @comment.save(comment_params)
        redirect_to discussion_path(params[:discussion_id])
end


private
    
    def comment_params
        params.require(:comment).permit(:text,:user_id)
    end
    
    def find_discussion
        @discussion = Discussion.find( params[:discussion_id] )
    end
end