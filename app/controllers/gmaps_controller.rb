class GmapsController < ApplicationController
  def index

    @articles = Article.all
    @hash = Gmaps4rails.build_markers(@articles) do |article, marker|
      marker.lat article.latitude #sinon mettre geocode[0] bizarre...
      marker.lng article.longitude
      marker.infowindow "#{article.title} #{article.resume}, #{article.adress}, #{article.user_id}"
    end
  end
end


#@hash = Gmaps4rails.build_markers(@articles) do |article, marker|
#  marker.lat article.geocode[0]
#  marker.lng article.geocode[1]
#  marker.infowindow "#{article.title} #{article.resume}, #{article.adress}, #{article.user_id}"
#end
