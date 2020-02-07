class ApplicationController < ActionController::Base
  include Knock::Authenticable
  skip_before_action :verify_authenticity_token
  helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!
end
