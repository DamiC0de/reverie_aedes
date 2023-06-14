class Subscription < ApplicationRecord
  belongs_to :user

  def active?
    self.expiration_date > Time.now
  end

end