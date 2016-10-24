class DiscussionsController < ApplicationController
    before_action :set_discusstion, :only => [:edit,:update,:destroy]
    before_action :authenticate_user!, :only => [:new,:create,:edit,:update,:destroy]
    
    def index
        @discussions = Discussion.all
    end
    
    def new
        @discussion = Discussion.new
    end
    
    def create
        @discussion = current_user.discussions.new(discussion_params)
        @discussion.save
        
        redirect_to discussions_path
    end
    
    def show
        @discussion = Discussion.find(params[:id])
    end
    
    def edit
    end
    
    def update
        @discussion.update(discussion_params)
        
        redirect_to discussions_path
    end
    
    def destroy
        @discussion.destroy
        redirect_to discussions_path
    end
    
    
private

    def discussion_params
        params.require(:discussion).permit(:topic, :article, :user_id)
    end
    
    def set_discusstion
        @discussion = current_user.discussions.find(params[:id])
    end
end
