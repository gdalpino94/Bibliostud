class SessionsController < ApplicationController

  def new
  end

  def create
    utente = Utente.find_by(username: params[:session][:username].downcase)
    if utente && utente.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in utente
      redirect_to utente
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end