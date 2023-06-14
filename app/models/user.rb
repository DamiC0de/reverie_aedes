class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :stories
  has_many :subscriptions
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  def subscribed?
    subscribed = false
    subscriptions.each do |sub|
      if sub.active?
        puts "subscri"
        subscribed = true
      end
    end
  end



end
