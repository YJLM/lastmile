class TeamController < FrontController
  
  before_filter :page_elements, only: [:index]
  
  def index
    @users = Front::User.list
    render layout: 'application'
  end
  
  protected
  
  def active_menu
    @active_menu ||= :team
  end
  
  
end
