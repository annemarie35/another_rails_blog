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

# INSTALLATION

- Git clone puis `bundle install` pour lancer l'installation des gems nécessaires au projet
- Lancer la commande `rake test` pour lancer les tests


## INSTALLATION BDD
- si vous n'avez pas de base de données installée sur votre ordinateur : voir le readme de https://github.com/simplonco/simplonline/blob/dev/README.md
- renommer .sampleenv en .env et modifier les données pour vos mots de passe et user
- Pour lancer le serveur `foreman start web` port 5000

# DEPLOYEMENT HEROKU

L'application est en ligne sur Heroku https://a-blog-rails.herokuapp.com/
( besoin de la commande `heroku run rake db:migrate`voir le tuto en ligne https://devcenter.heroku.com/articles/getting-started-with-rails3)
