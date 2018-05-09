
  class UserMailer < ApplicationMailer
    default from: "no-reply@example.com"
    def follow_up(email)
      mail(
        to: email,
        subject: "How are things going?"
      )
    end
  end
