class ContactController < FrontController
  
  before_filter :assert_ajax_post
  
  def index
    
  end
  
  def contact
    element = Front::ContactForm.new(params[:contact])
    element.send_mail
    render json: { errors: element.errors }
  end
  
end
