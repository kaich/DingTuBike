class Bike < ActiveRecord::Base
  belongs_to :bikeable , polymorphic: true
  acts_as_votable

  mount_uploaders :avatars, AvatarUploader

  serialize :avatars

end
