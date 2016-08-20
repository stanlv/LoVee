class UserMailerPreview < ActionMailer::Preview
  def challenge_validation
    user = User.first
    UserMailer.challenge_validation(user)
  end
end
