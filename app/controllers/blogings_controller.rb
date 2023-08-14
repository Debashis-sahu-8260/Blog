class BlogingsController < ApplicationController

    def index
        @blogings = Bloging.all
    end

    def show 
        @bloging = Blogings.find(params[:id])
    end

    def new
        @bloging = Bloging.new
    end

    def create
        @bloging = Bloging.new(bloging_params)

        if @bloging.save
            redirect to @bloging
        else
            render 'new'
        end
    end
    def update
    end
    
    def destory
    end

    private

    def bloging_params
        params_require(:blog).permit(:title, :content)
    end
end