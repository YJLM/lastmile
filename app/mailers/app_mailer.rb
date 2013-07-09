class AppMailer < ActionMailer::Base
  
  layout 'mail'
  before_filter :assets_host
  
  def contact(form)
    @form = form
    @title = I18n.t('app.mail.views.contact.title')
    mail to: Settings.get("mail.to"), subject: self.subject
  end
  
  def contact_confirmation(form)
    @title = I18n.t('app.mail.views.contact_confirmation.title')
    mail to: form.mail, subject: self.subject
  end
  
  protected
  
  def assets_host
    ActionMailer::Base.default_url_options = { host: Settings.get("mail.assets_host") }
  end
  
  def subject
    @subject ||= "#{I18n.t('app.mail.title')}"
  end
  
  
  
end
