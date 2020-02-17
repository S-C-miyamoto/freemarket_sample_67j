class Users::RegistrationsController < Devise::RegistrationsController
  before_action :session_and_valid_for_new_address, only: [:new_address]
  before_action :session_and_valid_for_create_address, only: [:create_address]
  # before_action :user_params, only: [:create_address]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @user = User.new
  end

  def new_address
    @address = @user.build_address
  end

  # POST /resource
  def create_address
    @address = Address.new(address_params)
    @user.build_address(@address.attributes)
    binding
    if @user.save
      sign_in(:user, @user)
      redirect_to signup_path
    else
      render :new_address
    end
  end

  def session_and_valid_for_new_address
    session[:nickname] = user_params[:nickname]
    session[:age] = user_params[:age]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:birth_year] = user_params[:birth_year]
    session[:birth_month] = user_params[:birth_month]
    session[:birth_day] = user_params[:birth_day]
    @user = User.new(
      nickname: session[:nickname],
      age: session[:age],
      email: session[:email],
      password: session[:password],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day]
    )
    unless @user.valid?
      flash.now[:alert] = @user.errors.full_messages
      render :new and return
    end
  end

  def session_and_valid_for_create_address
    @user = User.new(
      nickname: session[:nickname],
      age: session[:age],
      email: session[:email],
      password: session[:password],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day]
    )
  end

  protected

  def address_params
  params.require(:address).permit(:zipcode, :prefecture, :city, :detail_address, :buidling, :optional_phone_number)
  end


  def user_params
    params.require(:user).permit(
      :nickname,
      :age,
      :email,
      :password,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :birth_year,
      :birth_month,
      :birth_day
      )
  end
end
