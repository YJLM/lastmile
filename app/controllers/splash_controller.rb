class SplashController < FrontController
  
  before_filter :page_elements, only: [:index]
  
  def index
    render layout: 'application'
  end
  
  protected
  
  def active_menu
    @active_menu ||= :splash
  end
  
end