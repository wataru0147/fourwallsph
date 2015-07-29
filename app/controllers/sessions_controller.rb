class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase) #this pulls out the user from the database by finding
    if user && user.authenticate(params[:session][:password])     #the email
    log_in user
      redirect_to user
      else
        flash.now[:danger] = 'Invalid email/password combination' # Wrong info/ not aunthentic
      render 'new'
    end
  end

  def destroy
  end
end
