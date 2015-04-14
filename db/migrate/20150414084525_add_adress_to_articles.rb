class AddAdressToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :adress, :string
  end
end
