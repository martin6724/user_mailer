require 'test_helper'
class UserMailerTest < ActionMailer::TestCase
  test "follow up" do
    target_email = "to@example.com"
    mail = UserMailer.follow_up(target_email).deliver_now

    assert_not ActionMailer::Base.deliveries.empty?
    assert_equal [target_email], email.to
    assert_equal "How are things going?", email.subject
    assert_match "Twitter and Facebook",
      mail.html_part.encoded
    assert_match "Twitter and Facebook",
      mail.text_part.encoded
  end

end
