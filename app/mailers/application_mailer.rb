class ApplicationMailer < ActionMailer::Base
  default from: "library.manager.app@gmail.com"
  layout "mailer"

  def user_reservation(user, book, reservation_date)
    @user = user
    @book = book
    @reservation_date = reservation_date
    mail(to: @user.email, subject: 'Twoja rezerwacja została zrealizowana')
  end
end
