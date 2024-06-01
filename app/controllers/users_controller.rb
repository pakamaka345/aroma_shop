class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]
  helper_method :current_user

  def login
  end

  def forgot_password
  end

  def authenticate
    user = User.find_by('email = ? OR username = ?', params[:login], params[:login])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_path, alert: 'Невірний логін або пароль'
    end
  end

  def new
    @user = User.new
    render 'register'
  end

  def create
    @user = User.new(user_params.merge(admin: false))

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Ви успішно зареєструвались'
    else
      render :register
    end
  end

  def profile
    @user = current_user
    render 'profile'
  end

  def edit
    @user = current_user
  end

  def update
    if current_user.update(user_params)
      redirect_to edit_user_path(current_user), notice: 'Profile updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: 'User was successfully deleted.'
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :first_name, :last_name, :address, :phone_number)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def authorize_user
    redirect_to root_path, alert: 'Not authorized' unless current_user.admin? || current_user == @user
  end

end
