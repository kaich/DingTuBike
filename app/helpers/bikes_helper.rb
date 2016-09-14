module BikesHelper

    def favorite?(bike)
        current_user.liked? bike 
    end

    def favorite_tag(bike)
        isfavorite = favorite?(bike)
        fa_icon = isfavorite ? "fa fa-heart-o" : "fa fa-heart"
        fa_tag = "<i class=\"#{fa_icon}\"></i>".html_safe
        link_to  fa_tag , favorite_bike_path(bike) , method: :patch , remote: true ,class:'btn btn-primary', favorite: isfavorite
    end

end
