class SessionsController < Clearance::SessionsController
  protected
  def url_after_create
    choose_challenges_path
  end
end