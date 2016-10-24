class DiscussionsController < ApplicationController
    before_action :set_discusstion, :only => [:show,:edit,:update,:destroy]
    
    def index
        @discussions = Discussion.all
    end
    
    def new
        @discussion = Discussion.new
    end
    
    def create
        @discussion = Discussion.new(discussion_params)
        @discussion.save
        
        redirect_to discussions_path
    end
    
    def show
        
    end
    
    def update
        
    end
    
    def destroy
        
    end
    
    
private

    def discussion_params
        params.require(:discussion).permit(:topic, :article)
    end
    
    def set_discusstion
        @discussion = Discussion.find(params[:id])
    end
end
