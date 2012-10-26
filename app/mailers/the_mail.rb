class TheMail < ActionMailer::Base
  def request_notification (user, item)
    mail(
      from: "from@example.com",
      to: "to@example.com",
      subject: "Someone requested your item.",
    )
  end
  def welcome (user)
    mail(
      from: "sharesite.do.not.reply@gmail.com",
      to: user.email,
      subject: "Welcome to ShareSite!"
    )
  end

end
