class ProfilesController < ApplicationController
  before_filter(:only => [:create, :new]) { |c| c.prevent_if_signed_in() } 
  before_filter(:only => [:update, :edit]) { |c| c.require_user_is_owner(params[:controller], params[:id]) }

  def new
    @profile = params[:controller].classify.constantize.new
    user = @profile.build_user
    #image = user.build_image (no longer needed)
  end
  
  def create
    # note here, using the controller name to generalize the solution
    @profile = params[:controller].classify.constantize.new(params[params[:controller].singularize])
    if @profile.save
      flash[:notice] = "Your profile has been successfully created" if params[:controller] == "student_profiles"
      flash[:notice] = "Your profile has been successfully created.  We will review it within 24 hours after which it will be added to the site" if params[:controller] == "teacher_profiles"
      sign_in @profile.user
      redirect_to @profile.user
    else
      render "new"
    end
  end

  def edit
    @profile = params[:controller].classify.constantize.find(params[:id])
  end

  def update
    @profile = params[:controller].classify.constantize.find(params[:id])
    if @profile.update_attributes(params[params[:controller].singularize])
      flash[:notice] = "Your profile has been successfully updated"
      redirect_to user_path(@profile.user)
    else
      render "new"
    end
  end
end

