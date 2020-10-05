class ConfirmMailer < ApplicationMailer
  def confirm_mail(feed)
    @feed = feed
    mail to: "yuichi19991208@gmail.com", subject: "投稿確認メール"
  end
end
