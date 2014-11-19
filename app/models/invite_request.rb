class InviteRequest < ActiveRecord::Base

  validates :email, uniqueness: { message: "Email address is already on our waiting list" }

  before_save :downcase_email

  def downcase_email
    self.email = self.email.downcase
  end

end
