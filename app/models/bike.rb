class Bike < ActiveRecord::Base
  belongs_to :bikeable , polymorphic: true
  acts_as_votable
  acts_as_commentable

  mount_uploaders :avatars, BikeAvatarUploader

  serialize :avatars

end
