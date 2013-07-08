class TeamController < FrontController
  
  before_filter :assert_ajax_post
  
  def index
    @team = Front::User.list
  end
  
end
