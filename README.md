== README

# Objectifs de l'application
Le système doit se composer de 2 parties : 
­- Le ​back office ​ qui doit permettre d’ajouter/supprimer/éditer des articles ­
-  Le site en tant que tel (ou ​front end ​) qui affiche tous les articles 10 par 10 avec un système de pagination pour en voir les plus anciens 
 
Le design est libre mais nous recommandons d’utiliser Bootstrap ou Foundation pour gagner 
du temps et que le front­end soit responsive. 
 
## Bonus : 
Implémenter une gestion d’utilisateur avec page d’inscription sur le front et gestion des accès dans le back office 
 
## Architecture : 
­
### back office : 
­ - page d’authentification ­
 -  page de listing de toutes les articles (avec boutons pour ajouter / modifier / supprimer) ­
 -  page d'édition d’un article ­
 -  (bonus) liste des utilisateurs (avec boutons pour ajouter / modifier / supprimer) ­
 -  (bonus) édition d’un utilisateur 
### front end : 
­ - page unique avec titre du site et 10 derniers articles (sous forme texte + résumé)
 - une page article ­
 -  pagination dans le footer ­
 -  (bonus) une page d’inscription  

## Typologie de données : 
­ Un article est constitué par : 
­  - un titre (256 char max)
 - un résumé ­
 -  un texte ­
 -  une image ­
 -  un auteur (en cas d’appli multi utilisateur) ­
 -  (bonus) Un auteur/utilisateur est constitué par : ­
	 -  un nom ­
	 -  un email ­
	 -  un mot de passe

# TUTOS 

--> http://www.sitepoint.com/processing-images-with-carrierwave/
--> http://www.sitepoint.com/image-processing-rails/

--> CSS : https://www.rubyplus.com/

rails g scaffold User name:string created_at:datetime updated_at:datetime admin:boolean email:string password_digest:string reset_password_key:string

rails g scaffold Article title:string created_at:datetime updated_at:datetime  email:string password_digest:string reset_password_key:string


--> rails g scaffold Article title:string description:text resume:text image:string user_id:integer