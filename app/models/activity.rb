class Activity < ActiveRecord::Base
    mount_uploader :cover, AvatarUploader
end
