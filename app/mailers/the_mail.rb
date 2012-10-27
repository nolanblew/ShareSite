class TheMail < ActionMailer::Base
  def request_notification (user, item)
    mail(
      from: "from@example.com",
      to: "to@example.com",
      subject: "Someone requested your item.",
    )
  end
end
