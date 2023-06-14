class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :stories
  has_many :subscriptions

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
