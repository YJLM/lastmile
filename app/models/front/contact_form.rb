class Front::ContactForm
  
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  
  attr_accessor :name, :mail, :organization, :subject, :message
  
  validates :name, :mail, :message, presence: true
  validates :mail, format: { with: ActiveRecord::FmxBase::Regex::Mail }
  validates :name, length: { in: 2..100 }
  validates :message, length: { in: 10..500 }
  
  def initialize(args)
    args.each do |name, val|
      send("#{name}=", val)
    end
  end
  
  def send_mail
    if self.valid?
      el = QueuedMail.generate(AppMailer.contact(self))
      el.save
      el = QueuedMail.generate(AppMailer.contact_confirmation(self))
      el.save
    end
  end
  
  class << self
    def i18n_scope
      :activerecord
    end
  end
  
  
end