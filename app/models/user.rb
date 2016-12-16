class User < ApplicationRecord

  has_attached_file :profile_photo, styles: { medium: '300x300', large: '500x500', thumb: '150x150' }

  validates_attachment_content_type :profile_photo, content_type: /\Aimage\/.*\Z/

  def self.welcome_email(id)
    UserMailer.welcome(find(id)).deliver
  end 

end
