class BlogingsController < ApplicationController
    before_action :authenticate_user!, except: [:show, :edit, :update, :destroy]
  
    def index
      @blogings = Bloging.all
    end
  
    def show 
      # Use 'find' method on the model class
      @bloging = Bloging.find(params[:id])
    end
  
    def new
      @bloging = current_user.blogings.build
    end
  
    def create
        puts params.inspect
        @bloging = current_user.blogings.build(bloging_params)
        if params[:user] && params[:user][:gender]
          @bloging = current_user
          @bloging.user.gender = params[:user][:gender]
        end
        if @bloging.save
            flash[:success] = 'Blog post was successfully created.'
            redirect_to blogings_path
        else
            flash.now[:error] = 'There was an error creating the blog post.'
            render :new
            # redirect_to blogings_path, alert: 'Failed to create task!'
        end
    end
  
    def update
      if @bloging.update(bloging_params)
        redirect_to bloging_path(@bloging)
      else
        render :edit
      end
    end
      
    def destroy
      @bloging = current_user.blogings.find(params[:id])
      @bloging.destroy # Corrected 'destory' to 'destroy'
      redirect_to blogings_path, notice: 'Blog post successfully deleted'
    end
  
    private
  
    def set_bloging
      @bloging = current_user.blogings.find(params[:id]) # Corrected method name
    end
  
    def bloging_params
      params.require(:bloging).permit(:title, :content, :image, :avatar, user_attributes: [:gender]) # Corrected 'params_required' to 'require'
    end
  end
  