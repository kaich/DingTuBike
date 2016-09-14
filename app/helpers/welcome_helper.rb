module WelcomeHelper

    def user_tag
        if !current_user
            return link_to "还未登陆" , new_user_registration_path 
        else 
            #return link_to 
        end
    end

end
