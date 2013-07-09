class QueuedMail < ActiveRecord::FmxBase
  
  MAX = 5
  MAX_TRIES = 3
  
  scope :base, -> { select("queued_mails.id, queued_mails.mail, queued_mails.tries, queued_mails.sent_at") }
  scope :base_count, -> { select("COUNT(queued_mails.id) as num") }
  scope :filter_by_id, ->(id) { where(id: id) }
  scope :pending, -> { where(sent_at: nil)  }
  scope :ascending, -> { order(:tries) }
  scope :valid, -> { where("queued_mails.tries < ?", MAX_TRIES) }
  scope :queue, -> { base.pending.valid.ascending.limit(MAX) }
  
  attr_protected :mail, :tries
  attr_accessor :mail_obj
  
  validates :mail, presence: true
  
  def self.generate(mail_obj)
    el = self.new
    el.mail_obj = mail_obj
    el.mail = el.mail_obj.to_y
    el
  end
  
  def deliver
    begin
      require 'mail'
      mail = Mail::Message.from_y(self.mail)
      mail.from = Settings.get("mail.from") 
      mail.deliver
      self.sent_at = Time.now
    rescue Exception => e
      puts e
      self.tries = self.tries.to_i + 1
    end
    self.save
  end
  
  def self.deliver
    self.queue.each do |el|
      el.deliver
    end
  end
  
  
  
end