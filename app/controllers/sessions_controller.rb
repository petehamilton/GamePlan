class SessionsController < Clearance::SessionsController
  protected
  def url_after_create
    user_challenges_path
  end
end