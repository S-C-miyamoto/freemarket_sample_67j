class UsersController < ApplicationController

  def show
    @card = Card.find_by(user_id: current_user.id)
  end

end
