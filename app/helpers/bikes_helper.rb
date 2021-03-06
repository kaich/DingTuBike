module BikesHelper

    def favorite?(model)
      if current_user 
        current_user.liked? model 
      else
        return false
      end
    end

    def favorite_bike_tag(bike)
        isfavorite = favorite?(bike)
        fa_icon = isfavorite ? "fa fa-heart" : "fa fa-heart-o"
        fa_tag = "<i class=\"#{fa_icon}\"></i>".html_safe
        link_to  fa_tag , favorite_bike_path(bike) , method: :patch , remote: true ,class:'btn btn-primary', favorite: isfavorite
    end

end
