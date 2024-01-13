class ApplicationMailer < ActionMailer::Base
  default from: "library.manager.app@gmail.com"
  layout "mailer"

  def user_reservation(user, book, reservation_date)
    @user = user
    @book = book
    @reservation_date = reservation_date
    mail(to: @user.email, subject: 'Twoja rezerwacja została zrealizowana')
  end
  def user_borrowing(borrowing)
    if borrowing.present? && borrowing.user.present? && borrowing.copy.present?
      @user = borrowing.user
      @book = borrowing.copy.book
      @borrowing = borrowing
      mail(to: @user.email, subject: 'Twoje wypożyczenie zostało anulowane')
    else
      Rails.logger.error("Błąd w user_borrowing: Nieprawidłowe wartości w borrowing lub jego atrybutach.")
    end
  end
  

end
