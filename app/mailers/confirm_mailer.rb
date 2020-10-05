class ConfirmMailer < ApplicationMailer
  def confirm_mail(feed)
    @feed = feed
    mail to: "yuichi19991208@gmail.com", subject: "投稿確認メール"
  end
end
oyamayuichi@MacBook-Pro InstagramClone % heroku config:get SENDGRID_USERNAME
app186604841@heroku.com
oyamayuichi@MacBook-Pro InstagramClone % heroku config:get SENDGRID_PASSWORD
gew05zgf1196
