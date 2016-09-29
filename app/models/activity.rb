class Activity < ActiveRecord::Base
  mount_uploader :cover, ActivityCoverUploader

  acts_as_votable
  acts_as_commentable

  #validate :validate_favorite_count

  #def validate_favorite_count
    #if current_user
      #favorite_count = current_user.get_voted(Activity)
      #if favorite_count >= 1
        #errors.add(:favorite, "add favorite activity up to max count!")
      #end
    #end
  #end




end
