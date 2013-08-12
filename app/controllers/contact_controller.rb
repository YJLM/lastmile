class ContactController < FrontController
  
  before_filter :assert_ajax_post, only: [:contact]
  before_filter :page_elements, only: [:index]
  
  def index
    render layout: 'application'
  end
  
  def contact
    element = Front::ContactForm.new(params[:contact])
    element.send_mail
    render json: { errors: element.errors }
  end
  
  protected
  
  def active_menu
    @active_menu ||= :contact
  end
  
  
end
