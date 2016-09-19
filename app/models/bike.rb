class Bike < ActiveRecord::Base
  belongs_to :bikeable , polymorphic: true
  acts_as_votable

  mount_uploaders :avatars, BikeAvatarUploader

  serialize :avatars

end
