class SGmailer < ActionMailer::Base
  default :from => "sharesite.do.not.reply@gmail.com"
  def email(recipient, subject, item, user)
	@item = item.name
	@user = user
	mail(:to =>	recipient, :subject => subject) do |format|
			format.text { render "email_plain.html.erb" }
			format.html { render "email_html.html.erb" }
		end
  end
  
  def send_email(recipient, subject, message)
	mail(recipient, subject, message).deliver
  end
  
end
