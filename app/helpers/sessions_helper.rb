module SessionsHelper

  # Logs in the given user.
  def log_in(utente)
    session[:user_id] = utente.id
    
  end

  # Returns the current logged-in user (if any).
  def current_utente
    @current_utente ||= Utente.find_by(username: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_utente.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_utente = nil
  end

end