namespace :queued_mail do
  desc 'Send queued mails'
  task deliver: :environment do
    QueuedMail.deliver
  end
end