class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    callback_for(:facebook)
  end

  def twitter
    callback_for(:twitter)
  end

  def google
    callback_for(:google)
  end

  def callback_for(provider)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: "#{provider}"
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end