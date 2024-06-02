class ProfileController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    @user.admin = false
    redirect_to profile_path, notice: 'Profile was successfully updated.'
    if @user.save
    else
    redirect_to profile_path, notice: 'Profile was successfully updated.'
    end
  end

  def update
    if current_user.update(user_params)
      redirect_to profile_path, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  def profile
    @users = User.all
    @user = User.find(session[:user_id])
    @orders = @user.orders
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    admin = User.find_by(admin: true)
    redirect_to user_profiles_path(admin.id), notice: 'Користувач був успішно видалений.'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :password, :address, :username)
  end
end
