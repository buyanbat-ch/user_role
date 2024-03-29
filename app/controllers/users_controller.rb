class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    Permission.all.each do |perm|
      @user.user_permissions.build(permission_id: perm.id)
    end
  end

  def create
    @user = User.new(user_params)
    @saved = @user.save
    if @saved
      flash[:notice] = "Saved successfully"
      redirect_to users_path
    else
      render :new
    end
  end
  def edit
    @user = User.find(params[:id])
    render :new
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'Successfully updated'
    else
      render :new
    end
  end
  
  def tabs
    @site = Site.find(params[:id])
    render json: {tabs: @site.site_tabs.map {|tab| [tab.title, tab.id]}}
  end

  private

  def user_params
    params.require(:user)
          .permit(
            :first_name,
            :last_name,
            :email,
            user_permissions_attributes: [:id, :permission_id, :site_id, :site_tab_id, :_destroy ])
  end

end
