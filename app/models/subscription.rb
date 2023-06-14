class Subscription < ApplicationRecord
  belongs_to :user

  def active?
    expiration_date > Time.now
  end

  def expiration_date
    start_date + 1.month
  end
end