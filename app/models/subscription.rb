class Subscription < ApplicationRecord
  belongs_to :user

  def active?
    expiration_date > Time.now
  end

end