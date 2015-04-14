class AddGmapsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :gmaps, :boolean
    add_column :articles, :latitude, :float
    add_column :articles, :longitude, :float
  end
end
